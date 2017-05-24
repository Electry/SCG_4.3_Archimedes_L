.class Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter$1;
.super Ljava/lang/Object;
.source "ViewPagerActivity.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/weibo/galleryview/PhotoViewAttacher$OnViewTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewTap(Landroid/view/View;FF)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 478
    const-string/jumbo v0, "wangdiyuan"

    const-string v1, "000000000000000000000000000"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter$1;->this$1:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity$WeiboGalleryPhotoViewAdapter;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/weibo/views/ViewPagerActivity;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 481
    return-void
.end method
