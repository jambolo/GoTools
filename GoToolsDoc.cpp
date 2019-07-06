// GoToolsDoc.cpp : implementation of the CGoToolsDoc class
//

#include "stdafx.h"
#include "GoTools.h"

#include "GoToolsDoc.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CGoToolsDoc

IMPLEMENT_DYNCREATE(CGoToolsDoc, CDocument)

BEGIN_MESSAGE_MAP(CGoToolsDoc, CDocument)
	//{{AFX_MSG_MAP(CGoToolsDoc)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CGoToolsDoc construction/destruction

CGoToolsDoc::CGoToolsDoc()
{
	// TODO: add one-time construction code here

}

CGoToolsDoc::~CGoToolsDoc()
{
}

BOOL CGoToolsDoc::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;

	// TODO: add reinitialization code here
	// (SDI documents will reuse this document)

	return TRUE;
}

/////////////////////////////////////////////////////////////////////////////
// CGoToolsDoc serialization

void CGoToolsDoc::Serialize(CArchive& ar)
{
	if (ar.IsStoring())
	{
		// TODO: add storing code here
	}
	else
	{
		// TODO: add loading code here
	}
}

/////////////////////////////////////////////////////////////////////////////
// CGoToolsDoc diagnostics

#ifdef _DEBUG
void CGoToolsDoc::AssertValid() const
{
	CDocument::AssertValid();
}

void CGoToolsDoc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CGoToolsDoc commands

BOOL CGoToolsDoc::OnOpenDocument(LPCTSTR lpszPathName) 
{
	if (!CDocument::OnOpenDocument(lpszPathName))
		return FALSE;
	
	// TODO: Add your specialized creation code here
	
	return TRUE;
}

BOOL CGoToolsDoc::OnSaveDocument(LPCTSTR lpszPathName) 
{
	// TODO: Add your specialized code here and/or call the base class
	
	return CDocument::OnSaveDocument(lpszPathName);
}
