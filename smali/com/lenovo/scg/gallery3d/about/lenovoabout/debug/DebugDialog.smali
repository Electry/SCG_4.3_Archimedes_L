.class public abstract Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;
.super Ljava/lang/Object;
.source "DebugDialog.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field mDialog:Landroid/app/Dialog;

.field mExpandableListView:Landroid/widget/ExpandableListView;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mListAdapter:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mTitle:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 27
    new-instance v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mListAdapter:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;

    .line 28
    return-void
.end method


# virtual methods
.method protected abstract createItems(Landroid/content/Context;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;",
            ">;"
        }
    .end annotation
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 61
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mDialog:Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04009c

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 39
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mListAdapter:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 40
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mListAdapter:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 41
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mListAdapter:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 44
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 45
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 46
    const v1, 0x104000a

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mDialog:Landroid/app/Dialog;

    .line 51
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mListAdapter:Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->createItems(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->refresh(Ljava/util/ArrayList;)V

    .line 53
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 55
    :cond_1
    return-void
.end method
