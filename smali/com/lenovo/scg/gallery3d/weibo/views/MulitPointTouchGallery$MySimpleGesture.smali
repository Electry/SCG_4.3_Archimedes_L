.class Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MulitPointTouchGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySimpleGesture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;
    .param p2, "x1"    # Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$1;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;-><init>(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, 0x43480000    # 200.0f

    .line 216
    const-string v1, "MulitPointTouchGallery"

    const-string/jumbo v2, "onDoubleTap()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    # invokes: Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->getGallerySelectedView()Landroid/view/View;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->access$100(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)Landroid/view/View;

    move-result-object v0

    .line 218
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    .end local v0    # "view":Landroid/view/View;
    # setter for: Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    invoke-static {v1, v0}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->access$202(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;)Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    .line 220
    const-string v1, "MulitPointTouchGallery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageView.getScale:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->access$200(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getScale()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " imageView.getFitScreenScale:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->access$200(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getFitScreenScale()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->access$200(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getBitmapOriginalWidth()I

    move-result v1

    sget v2, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->access$200(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getBitmapOriginalHeight()I

    move-result v1

    sget v2, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    if-le v1, v2, :cond_3

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->access$200(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getScale()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->access$200(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getFitScreenScale()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 227
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->access$200(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->access$200(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getFitScreenScale()F

    move-result v2

    sget v3, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->zoomTo(FFFF)V

    .line 250
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->access$200(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    sget v3, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->zoomTo(FFFF)V

    goto :goto_0

    .line 236
    :cond_3
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->access$200(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getScale()F

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mMaxScale:F
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->access$300(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 238
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->access$200(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mMaxScale:F
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->access$300(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)F

    move-result v2

    sget v3, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->zoomTo(FFFF)V

    goto :goto_0

    .line 242
    :cond_4
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->access$200(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery$MySimpleGesture;->this$0:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;

    # getter for: Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->mImageView:Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;->access$200(Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchGallery;)Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->getFitScreenScale()F

    move-result v2

    sget v3, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget v4, Lcom/lenovo/scg/gallery3d/weibo/activities/ShowWeiBoImageActivity;->screenHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/scg/gallery3d/weibo/views/MulitPointTouchImageView;->zoomTo(FFFF)V

    goto :goto_0
.end method
