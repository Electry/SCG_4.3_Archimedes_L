.class public Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "DebugDialogListAdapter.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field mContext:Landroid/content/Context;

.field mGroupsItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;",
            ">;"
        }
    .end annotation
.end field

.field mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->mGroupsItems:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->mContext:Landroid/content/Context;

    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 24
    return-void
.end method


# virtual methods
.method public getChild(II)Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->getGroup(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->get(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->getChild(II)Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 62
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "view"    # Landroid/view/View;
    .param p5, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->getChild(II)Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p4, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->newView(Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->getGroup(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->mGroupsItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->getGroup(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->mGroupsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "view"    # Landroid/view/View;
    .param p4, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->getGroup(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p3, v1}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->newView(Landroid/view/View;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 1
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 87
    invoke-virtual {p0, p3, p4}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->getChild(II)Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugItem;->onClick(Landroid/view/View;)V

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    .line 93
    invoke-virtual {p0, p3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->getGroup(I)Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;->onClick(Landroid/view/View;)V

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public refresh(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/item/DebugGroupItem;>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->mGroupsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 30
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->mGroupsItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/debug/DebugDialogListAdapter;->notifyDataSetChanged()V

    .line 33
    return-void
.end method
