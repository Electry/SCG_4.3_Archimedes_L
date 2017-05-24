.class Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;
.super Ljava/lang/Object;
.source "ViewPagerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->addGalleryViewActionBar(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 399
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 393
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    .line 374
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mImageCounter:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$100(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mDataItem:Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$000(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/data/DataItem;->getPicNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->selected_id:I
    invoke-static {v1, p1}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$202(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;I)I

    .line 376
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->allPicURLs:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->allPicURLs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 377
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->allPicURLs:Ljava/util/List;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->selected_id:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getBmiddle()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mMiddleURL:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$302(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 378
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->allPicURLs:Ljava/util/List;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->selected_id:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getLarge()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mLargeURL:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$402(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->allPicURLs:Ljava/util/List;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->selected_id:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$200(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/data/WeiboPicURL;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mThumbURL:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$502(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getLargeFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->getLargeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 381
    .local v0, "mLargeFile":Ljava/io/File;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->isFileExists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mHandler:Landroid/os/Handler;

    const v2, 0x11000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 388
    .end local v0    # "mLargeFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 384
    .restart local v0    # "mLargeFile":Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mHandler:Landroid/os/Handler;

    const v2, 0x11001

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
