// GoToolsView.cpp : implementation of the CGoToolsView class
//

#include "stdafx.h"
#include "GoTools.h"

#include "GoToolsDoc.h"
#include "GoToolsView.h"
#include "resource.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CGoToolsView

IMPLEMENT_DYNCREATE(CGoToolsView, CView)

BEGIN_MESSAGE_MAP(CGoToolsView, CView)
	ON_WM_CONTEXTMENU()
	//{{AFX_MSG_MAP(CGoToolsView)
	ON_WM_LBUTTONDOWN()
	//}}AFX_MSG_MAP
	// Standard printing commands
	ON_COMMAND(ID_FILE_PRINT, CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_DIRECT, CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, CView::OnFilePrintPreview)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CGoToolsView construction/destruction

CGoToolsView::CGoToolsView() : m_ellipseRect(0, 0, 200, 200)
{
	// TODO: add construction code here

}

CGoToolsView::~CGoToolsView()
{
}

BOOL CGoToolsView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs

	return CView::PreCreateWindow(cs);
}

/////////////////////////////////////////////////////////////////////////////
// CGoToolsView drawing

void CGoToolsView::OnDraw(CDC* pDC)
{
	const int DY = 32767 / 20;
	const int DX = DY * 9 / 10;
	const int X_OFFSET = DX;
	const int Y_OFFSET = DY;

	CGoToolsDoc* pDoc = GetDocument();
	ASSERT_VALID(pDoc);

    CPen penLine;
    CPen penThickLine;
	CBrush brushBlack;

    if( penLine.CreatePen( PS_SOLID, 50, RGB(0,0,0) ) &&
		penThickLine.CreatePen( PS_SOLID, 100, RGB(0,0,0) ) &&
		brushBlack.CreateSolidBrush( RGB(0,0,0) ) )
    {
		int		i, j;

		CPen* pOldPen = pDC->SelectObject( &penLine );
		CBrush* pOldBrush = pDC->SelectObject( &brushBlack );
	
		for (i = 1; i < 18; i++)
		{
			pDC->MoveTo(X_OFFSET, Y_OFFSET + i * DY);
			pDC->LineTo(X_OFFSET + 18 * DX, Y_OFFSET + i * DY);
		}

		for (j = 1; j < 18; j++)
		{
			pDC->MoveTo(X_OFFSET + j * DX, Y_OFFSET);
			pDC->LineTo(X_OFFSET + j * DX, Y_OFFSET + 18 * DY);
		}

		(void)pDC->SelectObject( &penThickLine );
		
			// Top edge

		pDC->MoveTo(X_OFFSET,           Y_OFFSET);
		pDC->LineTo(X_OFFSET + 18 * DX, Y_OFFSET);

			// Bottom Edge

		pDC->MoveTo(X_OFFSET,           Y_OFFSET + 18 * DY);
		pDC->LineTo(X_OFFSET + 18 * DX, Y_OFFSET + 18 * DY);

			// Left Edge

		pDC->MoveTo(X_OFFSET, Y_OFFSET);
		pDC->LineTo(X_OFFSET, Y_OFFSET + 18 * DY);

			// Right Edge

		pDC->MoveTo(X_OFFSET + 18 * DX, Y_OFFSET);
		pDC->LineTo(X_OFFSET + 18 * DX, Y_OFFSET + 18 * DY);

		for (i = 0; i < 3; i++)
			for (j = 0; j < 3; j++)
				pDC->Ellipse(CRect(X_OFFSET + 3*DX - 150 + j*6*DX,
								   Y_OFFSET + 3*DY - 150 + i*6*DY,
								   X_OFFSET + 3*DX + 200 + j*6*DX,
								   Y_OFFSET + 3*DY + 200 + i*6*DY));
		
		(void)pDC->SelectObject( pOldBrush );
		(void)pDC->SelectObject( pOldPen );
	}
    else
    {
        // Alert the user that resources are low
    }
}
  
/////////////////////////////////////////////////////////////////////////////
// CGoToolsView printing

BOOL CGoToolsView::OnPreparePrinting(CPrintInfo* pInfo)
{
	// default preparation
	return DoPreparePrinting(pInfo);
}

void CGoToolsView::OnBeginPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add extra initialization before printing
}

void CGoToolsView::OnEndPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add cleanup after printing
}

/////////////////////////////////////////////////////////////////////////////
// CGoToolsView diagnostics

#ifdef _DEBUG
void CGoToolsView::AssertValid() const
{
	CView::AssertValid();
}

void CGoToolsView::Dump(CDumpContext& dc) const
{
	CView::Dump(dc);
}

CGoToolsDoc* CGoToolsView::GetDocument() // non-debug version is inline
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CGoToolsDoc)));
	return (CGoToolsDoc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CGoToolsView message handlers

void CGoToolsView::OnLButtonDown(UINT nFlags, CPoint point) 
{
	Invalidate(TRUE);
}

void CGoToolsView::OnPrepareDC(CDC* pDC, CPrintInfo* pInfo) 
{
	CRect	clientRect;
	GetClientRect(clientRect);
	pDC->SetMapMode(MM_ISOTROPIC);
	pDC->SetWindowExt(32767, 32767);
	pDC->SetViewportExt(clientRect.right, clientRect.bottom);
}

void CGoToolsView::OnContextMenu(CWnd*, CPoint point)
{
	// CG: This function was added by the Pop-up Menu component

	CMenu menu;
	VERIFY(menu.LoadMenu(CG_IDR_POPUP_GO_TOOLS_VIEW));

	CMenu* pPopup = menu.GetSubMenu(0);
	ASSERT(pPopup != NULL);

	CWnd* pWndPopupOwner = this;
	while (pWndPopupOwner->GetStyle() & WS_CHILD)
		pWndPopupOwner = pWndPopupOwner->GetParent();

	pPopup->TrackPopupMenu(TPM_LEFTALIGN | TPM_RIGHTBUTTON, point.x, point.y,
		pWndPopupOwner);
}

BOOL CGoToolsView::PreTranslateMessage(MSG* pMsg)
{
	// CG: This block was added by the Pop-up Menu component
	{
		// Shift+F10: show pop-up menu.
		if ((((pMsg->message == WM_KEYDOWN || pMsg->message == WM_SYSKEYDOWN) && // If we hit a key and
			(pMsg->wParam == VK_F10) && (GetKeyState(VK_SHIFT) & ~1)) != 0) ||	// it's Shift+F10 OR
			(pMsg->message == WM_CONTEXTMENU))									// Natural keyboard key
		{
			CRect rect;
			GetClientRect(rect);
			ClientToScreen(rect);

			CPoint point = rect.TopLeft();
			point.Offset(5, 5);
			OnContextMenu(NULL, point);

			return TRUE;
		}
	}

	return CView::PreTranslateMessage(pMsg);
}
