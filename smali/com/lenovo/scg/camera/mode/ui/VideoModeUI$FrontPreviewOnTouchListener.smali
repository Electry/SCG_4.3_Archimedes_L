.class final Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;
.super Ljava/lang/Object;
.source "VideoModeUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrontPreviewOnTouchListener"
.end annotation


# instance fields
.field public mHeightThreshold:I

.field mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field public mWidthThreshold:I

.field private mXOffset:I

.field private mXPoint:I

.field private mYOffset:I

.field private mYPoint:I

.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;
    .param p2, "x1"    # Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;-><init>(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)V

    return-void
.end method

.method private isAwayMargin(IIZ)Z
    .locals 5
    .param p1, "currentMargin"    # I
    .param p2, "offset"    # I
    .param p3, "isVertical"    # Z

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x0

    .line 167
    const-string v1, "VideoModeUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAwayMargin currentMargin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-eqz p3, :cond_3

    .line 172
    if-ltz p1, :cond_0

    if-ne v4, p1, :cond_1

    if-gtz p2, :cond_1

    .line 174
    :cond_0
    const-string v1, "VideoModeUI"

    const-string v2, "isAwayMargin false already reached START 1"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    return v0

    .line 178
    :cond_1
    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    if-ge p1, v1, :cond_2

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mWidthThreshold:I

    if-ne v1, p1, :cond_7

    if-ltz p2, :cond_7

    .line 180
    :cond_2
    const-string v1, "VideoModeUI"

    const-string v2, "isAwayMargin false already reached END 1"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_3
    if-ltz p1, :cond_4

    if-ne v4, p1, :cond_5

    if-ltz p2, :cond_5

    .line 187
    :cond_4
    const-string v1, "VideoModeUI"

    const-string v2, "isAwayMargin false already reached START 2"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :cond_5
    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    if-ge p1, v1, :cond_6

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mHeightThreshold:I

    if-ne v1, p1, :cond_7

    if-gtz p2, :cond_7

    .line 193
    :cond_6
    const-string v1, "VideoModeUI"

    const-string v2, "isAwayMargin false\u3000already reached END 2"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x5

    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return v4

    .line 83
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mXPoint:I

    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mYPoint:I

    .line 85
    const-string v0, "VideoModeUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotionEvent.ACTION_DOWN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mXPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mYPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    add-int/lit8 v0, v0, -0x3c

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontPreview:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->access$000(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mWidthThreshold:I

    .line 98
    sget v0, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    add-int/lit8 v0, v0, -0x3c

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontPreview:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->access$000(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mHeightThreshold:I

    .line 100
    const-string v0, "VideoModeUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotionEvent.ACTION_DOWN mWidthThreshold = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mWidthThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHeightThreshold = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mHeightThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :pswitch_1
    const-string v0, "VideoModeUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotionEvent.ACTION_MOVE to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontPreview:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->access$000(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 110
    const-string v0, "VideoModeUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotionEvent.ACTION_MOVE current layout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mYPoint:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {}, Lcom/lenovo/scg/camera/CameraUtil;->getDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mYOffset:I

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mXPoint:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {}, Lcom/lenovo/scg/camera/CameraUtil;->getDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mXOffset:I

    .line 118
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mYOffset:I

    invoke-direct {p0, v0, v1, v4}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->isAwayMargin(IIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mYOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 122
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-gt v0, v3, :cond_2

    .line 123
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 129
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mXOffset:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->isAwayMargin(IIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mXOffset:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-gt v0, v3, :cond_3

    .line 134
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 139
    :cond_1
    :goto_2
    const-string v0, "VideoModeUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotionEvent.ACTION topMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rightMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontPreview:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->access$000(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mVideoMode:Lcom/lenovo/scg/camera/mode/VideoMode;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->access$100(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Lcom/lenovo/scg/camera/mode/VideoMode;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/VideoMode;->setSurfaceViewMargin(FF)V

    goto/16 :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mWidthThreshold:I

    if-lt v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mWidthThreshold:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mHeightThreshold:I

    if-lt v0, v1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mHeightThreshold:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 153
    :pswitch_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->this$0:Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;

    # getter for: Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->mFrontPreview:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;->access$000(Lcom/lenovo/scg/camera/mode/ui/VideoModeUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 155
    const-string v0, "VideoModeUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotionEvent.ACTION_UP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/VideoModeUI$FrontPreviewOnTouchListener;->mPreviewlayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
