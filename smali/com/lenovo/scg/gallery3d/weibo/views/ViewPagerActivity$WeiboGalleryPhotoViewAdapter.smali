.class Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ViewPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WeiboGalleryPhotoViewAdapter"
.end annotation


# instance fields
.field mBitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)V
    .locals 1

    .prologue
    .line 404
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->mBitmapList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$600(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    check-cast p3, Landroid/view/View;

    .end local p3    # "arg2":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 450
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 456
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->mBitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 513
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, -0x1

    .line 466
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;-><init>(Landroid/content/Context;)V

    .line 468
    .local v0, "photoView":Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->mBitmapList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 471
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->access$600(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;II)V

    .line 473
    new-instance v1, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter$1;-><init>(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/weibo/galleryview/WeiboGalleryPhotoView;->setOnViewTapListener(Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnViewTapListener;)V

    .line 483
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 489
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcelable;
    .param p2, "arg1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 496
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBitmapData(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "mBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 432
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->mBitmapList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 433
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->mBitmapList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 434
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->mBitmapList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 435
    .local v1, "needRecycle":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 436
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 433
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    .end local v0    # "i":I
    .end local v1    # "needRecycle":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->mBitmapList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 441
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->mBitmapList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    return-void
.end method

.method public setBitmapData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "bitmapList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    if-eqz p1, :cond_0

    .line 410
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->mBitmapList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 508
    return-void
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "newBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "location"    # I

    .prologue
    .line 423
    const-string v1, "ViewPagerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oldBitmap Width:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->mBitmapList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->mBitmapList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v0, "ViewPagerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "newBitmap Width:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void
.end method
