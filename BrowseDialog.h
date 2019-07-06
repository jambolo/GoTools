// BrowseDialog.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// BrowseDialog dialog

class BrowseDialog : public CDialog
{
// Construction
public:
	BrowseDialog(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(BrowseDialog)
	enum { IDD = IDD_BROWSE };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(BrowseDialog)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(BrowseDialog)
	afx_msg void OnEditAddVariation();
	afx_msg void OnEditBeginning();
	afx_msg void OnEditEnd();
	afx_msg void OnEditNext();
	afx_msg void OnEditNextComment();
	afx_msg void OnEditNextSibling();
	afx_msg void OnEditNextVariation();
	afx_msg void OnEditPrevious();
	afx_msg void OnEditPreviousComment();
	afx_msg void OnEditPreviousSibling();
	afx_msg void OnEditPreviousVariation();
	afx_msg void OnEditRemoveVariation();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};
