.class Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;
.super Ljava/lang/Object;
.source "IngestActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIgnoreItemCheckedStateChanges:Z

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)V
    .locals 1

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->mIgnoreItemCheckedStateChanges:Z

    return-void
.end method

.method private updateSelectedTitle(Landroid/view/ActionMode;)V
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$100(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->getCheckedItemCount()I

    move-result v0

    .line 124
    .local v0, "count":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110005

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    invoke-virtual {v0, p2}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 173
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000e

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->updateSelectedTitle(Landroid/view/ActionMode;)V

    .line 175
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActiveActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$402(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 176
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    const v2, 0x7f100b25

    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    # setter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActionMenuSwitcherItem:Landroid/view/MenuItem;
    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$502(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 177
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActionMenuSwitcherItem:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$500(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mFullscreenPagerVisible:Z
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$600(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Z

    move-result v3

    # invokes: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->setSwitcherMenuState(Landroid/view/MenuItem;Z)V
    invoke-static {v1, v2, v3}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$700(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;Landroid/view/MenuItem;Z)V

    .line 178
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActiveActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$402(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mActionMenuSwitcherItem:Landroid/view/MenuItem;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$502(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$800(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 186
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    const/4 v6, 0x0

    .line 129
    iget-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->mIgnoreItemCheckedStateChanges:Z

    if-eqz v4, :cond_0

    .line 163
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$200(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->itemAtPositionIsBucket(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 131
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$100(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 132
    .local v0, "checkedItems":Landroid/util/SparseBooleanArray;
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->mIgnoreItemCheckedStateChanges:Z

    .line 133
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$100(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    move-result-object v4

    invoke-virtual {v4, p2, v6}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->setItemChecked(IZ)V

    .line 137
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$200(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;
    invoke-static {v5}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$200(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->getSectionForPosition(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->getPositionForSection(I)I

    move-result v2

    .line 138
    .local v2, "nextSectionStart":I
    if-ne v2, p2, :cond_1

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mAdapter:Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$200(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ingest/adapter/MtpAdapter;->getCount()I

    move-result v2

    .line 140
    :cond_1
    const/4 v3, 0x0

    .line 144
    .local v3, "rangeValue":Z
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 145
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 146
    const/4 v3, 0x1

    .line 152
    :cond_2
    add-int/lit8 v1, p2, 0x1

    :goto_2
    if-ge v1, v2, :cond_5

    .line 153
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eq v4, v3, :cond_3

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mGridView:Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$100(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/lenovo/scg/gallery3d/ingest/ui/IngestGridView;->setItemChecked(IZ)V

    .line 152
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 144
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    :cond_5
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mPositionMappingCheckBroker:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$300(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->onBulkCheckedChange()V

    .line 157
    iput-boolean v6, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->mIgnoreItemCheckedStateChanges:Z

    .line 161
    .end local v0    # "checkedItems":Landroid/util/SparseBooleanArray;
    .end local v1    # "i":I
    .end local v2    # "nextSectionStart":I
    .end local v3    # "rangeValue":Z
    :goto_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mLastCheckedPosition:I
    invoke-static {v4, p2}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$002(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;I)I

    .line 162
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->updateSelectedTitle(Landroid/view/ActionMode;)V

    goto :goto_0

    .line 159
    :cond_6
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->mPositionMappingCheckBroker:Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;->access$300(Lcom/lenovo/scg/gallery3d/ingest/IngestActivity;)Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;

    move-result-object v4

    invoke-virtual {v4, p2, p5}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$PositionMappingCheckBroker;->onCheckedChange(IZ)V

    goto :goto_3
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/ingest/IngestActivity$2;->updateSelectedTitle(Landroid/view/ActionMode;)V

    .line 191
    const/4 v0, 0x0

    return v0
.end method
