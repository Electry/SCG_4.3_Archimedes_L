.class Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$4;
.super Ljava/lang/Object;
.source "BoxControlActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->dealwithViewEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 278
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v2, "category_BoxControlActivity"

    const-string v3, "action_BoxControlActivity_click_list_item"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 281
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCatalogueLayout:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1000(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 283
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicsGrid:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1100(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mRequestType:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$000(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 285
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mCancelView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1200(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mDividLine2:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1300(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1500(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1400(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->setmSelectPhotoView(Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;)V

    .line 290
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAllItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1600(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mImageList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1500(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    move-result-object v2

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAllItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1600(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mImageList:Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->setIamgeList(Lcom/lenovo/scg/gallery3d/boxcontrol/IImageList;)V

    .line 292
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mSubPicAdapter:Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1500(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/SubPicsAdapter;->notifyDataSetChanged()V

    .line 294
    :cond_1
    const-string v2, "BoxControlActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAllItems.get(arg2).mName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAllItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1600(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mAllItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1600(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;

    iget-object v0, v1, Lcom/lenovo/scg/gallery3d/boxcontrol/AlbumItem;->mName:Ljava/lang/String;

    .line 296
    .local v0, "title":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v6, :cond_2

    .line 297
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$4;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->mTitleView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$1700(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    return-void
.end method
