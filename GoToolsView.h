// GoToolsView.h : interface of the CGoToolsView class
//
/////////////////////////////////////////////////////////////////////////////

class CGoToolsView : public CView
{
private:
	CRect	m_ellipseRect;
protected: // create from serialization only
	afx_msg void OnContextMenu(CWnd*, CPoint point);
	CGoToolsView();
	DECLARE_DYNCREATE(CGoToolsView)

// Attributes
public:
	virtual BOOL PreTranslateMessage(MSG* pMsg);
	CGoToolsDoc* GetDocument();

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CGoToolsView)
	public:
	virtual void OnDraw(CDC* pDC);  // overridden to draw this view
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	virtual void OnPrepareDC(CDC* pDC, CPrintInfo* pInfo = NULL);
	protected:
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CGoToolsView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CGoToolsView)
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in GoToolsView.cpp
inline CGoToolsDoc* CGoToolsView::GetDocument()
   { return (CGoToolsDoc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////

