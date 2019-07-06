// BrowseDialog.cpp : implementation file
//

#include "stdafx.h"
#include "GoTools.h"
#include "BrowseDialog.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// BrowseDialog dialog


BrowseDialog::BrowseDialog(CWnd* pParent /*=NULL*/)
	: CDialog(BrowseDialog::IDD, pParent)
{
	//{{AFX_DATA_INIT(BrowseDialog)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void BrowseDialog::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(BrowseDialog)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(BrowseDialog, CDialog)
	//{{AFX_MSG_MAP(BrowseDialog)
	ON_BN_CLICKED(IDC_EDIT_ADD_VARIATION, OnEditAddVariation)
	ON_BN_CLICKED(IDC_EDIT_BEGINNING, OnEditBeginning)
	ON_BN_CLICKED(IDC_EDIT_END, OnEditEnd)
	ON_BN_CLICKED(IDC_EDIT_NEXT, OnEditNext)
	ON_BN_CLICKED(IDC_EDIT_NEXT_COMMENT, OnEditNextComment)
	ON_BN_CLICKED(IDC_EDIT_NEXT_SIBLING, OnEditNextSibling)
	ON_BN_CLICKED(IDC_EDIT_NEXT_VARIATION, OnEditNextVariation)
	ON_BN_CLICKED(IDC_EDIT_PREVIOUS, OnEditPrevious)
	ON_BN_CLICKED(IDC_EDIT_PREVIOUS_COMMENT, OnEditPreviousComment)
	ON_BN_CLICKED(IDC_EDIT_PREVIOUS_SIBLING, OnEditPreviousSibling)
	ON_BN_CLICKED(IDC_EDIT_PREVIOUS_VARIATION, OnEditPreviousVariation)
	ON_BN_CLICKED(IDC_EDIT_REMOVE_VARIATION, OnEditRemoveVariation)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// BrowseDialog message handlers

void BrowseDialog::OnEditAddVariation() 
{
	// TODO: Add your control notification handler code here
	
}

void BrowseDialog::OnEditBeginning() 
{
	// TODO: Add your control notification handler code here
	
}

void BrowseDialog::OnEditEnd() 
{
	// TODO: Add your control notification handler code here
	
}

void BrowseDialog::OnEditNext() 
{
	// TODO: Add your control notification handler code here
	
}

void BrowseDialog::OnEditNextComment() 
{
	// TODO: Add your control notification handler code here
	
}

void BrowseDialog::OnEditNextSibling() 
{
	// TODO: Add your control notification handler code here
	
}

void BrowseDialog::OnEditNextVariation() 
{
	// TODO: Add your control notification handler code here
	
}

void BrowseDialog::OnEditPrevious() 
{
	// TODO: Add your control notification handler code here
	
}

void BrowseDialog::OnEditPreviousComment() 
{
	// TODO: Add your control notification handler code here
	
}

void BrowseDialog::OnEditPreviousSibling() 
{
	// TODO: Add your control notification handler code here
	
}

void BrowseDialog::OnEditPreviousVariation() 
{
	// TODO: Add your control notification handler code here
	
}

void BrowseDialog::OnEditRemoveVariation() 
{
	// TODO: Add your control notification handler code here
	
}
