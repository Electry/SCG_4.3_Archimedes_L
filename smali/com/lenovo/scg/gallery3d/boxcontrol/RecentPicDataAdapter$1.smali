.class Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;
.super Ljava/lang/Object;
.source "RecentPicDataAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

.field final synthetic val$imageSelectIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;->val$imageSelectIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 276
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "category_BoxControlActivity"

    const-string v6, "action_BoxControlActivity_click_grid_item"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;

    .line 280
    .local v1, "i":Lcom/lenovo/scg/gallery3d/boxcontrol/Image;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mCurrentRequestType:I
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->access$000(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getmPosition()I

    move-result v4

    sget v5, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->mSingleMode_FirstIcon_Position:I

    if-ne v4, v5, :cond_2

    .line 281
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxDataClass;->getSDPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "sdPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->access$200(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sdPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, "cameraPicFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 290
    :cond_0
    const-string/jumbo v4, "output"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 294
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->access$100(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    const/16 v5, 0xf0

    invoke-virtual {v4, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 338
    .end local v0    # "cameraPicFile":Ljava/io/File;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "sdPath":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 296
    :cond_2
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 297
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mIsReplaceImage:Z
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->access$300(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 301
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;->val$imageSelectIcon:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    invoke-virtual {v1, v8}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    .line 334
    :goto_1
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mOnPhotoSelectedChangeListener:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$OnPhotoSelectedChangeListener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->access$600(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$OnPhotoSelectedChangeListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 335
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mOnPhotoSelectedChangeListener:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$OnPhotoSelectedChangeListener;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->access$600(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$OnPhotoSelectedChangeListener;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$OnPhotoSelectedChangeListener;->onPhotoSelectedChange(Lcom/lenovo/scg/gallery3d/boxcontrol/Image;)V

    goto :goto_0

    .line 305
    :cond_3
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mIsFromGif:Z
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->access$400(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mIsReplaceImage:Z
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->access$300(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->access$500(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->getmSelectList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    .line 309
    :cond_4
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mIsFromGif:Z
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->access$400(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;

    # getter for: Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->mSelectPhotoView:Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;
    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;->access$500(Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter;)Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/SelectedPhotoView;->getmSelectList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x15

    if-eq v4, v5, :cond_1

    .line 314
    :cond_5
    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getWidth()I

    move-result v4

    if-eqz v4, :cond_1

    .line 318
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getWidth()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    const/4 v5, 0x2

    if-gt v4, v5, :cond_1

    .line 322
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getHeight()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->getHeight()I

    move-result v5

    div-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_1

    .line 327
    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 331
    :cond_8
    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/RecentPicDataAdapter$1;->val$imageSelectIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/gallery3d/boxcontrol/Image;->setmIselected(Z)V

    goto/16 :goto_1
.end method
