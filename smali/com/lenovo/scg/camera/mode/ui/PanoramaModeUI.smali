.class public Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;
.super Ljava/lang/Object;
.source "PanoramaModeUI.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mIsLeft2Right:Z

.field private mOriention:I

.field private mPanorama2DLayout:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

.field private mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

.field private mPanoramaRealTimePreviewViewHeight:I

.field private mPanoramaRealTimePreviewViewWidthCapturing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "PanoramaModeUI"

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->TAG:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    .line 26
    iput-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanorama2DLayout:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mOriention:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mIsLeft2Right:Z

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040049

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanorama2DLayout:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09030d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewViewWidthCapturing:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09030e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewViewHeight:I

    .line 40
    return-void
.end method


# virtual methods
.method public animQuick(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanorama2DLayout:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->animQuick(Z)V

    .line 173
    return-void
.end method

.method public changeImageViewSize(III)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->changeImageViewSize(II)V

    .line 127
    return-void
.end method

.method public deinitPreviewContainer()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->deinitPreviewContainer()V

    .line 224
    return-void
.end method

.method public get2DView()Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanorama2DLayout:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    return-object v0
.end method

.method public getImageViewWidth()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getImageViewWidth()I

    move-result v0

    return v0
.end method

.method public getWindow()Lcom/lenovo/scg/gallery3d/ui/GLView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    return-object v0
.end method

.method public hidePreviewBar()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->hidePreviewBar()V

    .line 64
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    invoke-static {p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->getInstance(Landroid/content/Context;)Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->init(Landroid/content/Context;)V

    .line 137
    return-void
.end method

.method public initPreviewContainer(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->initPreviewContainer(II)V

    .line 219
    return-void
.end method

.method public needDrawHintBG(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->needDrawHintBG(Z)V

    .line 196
    return-void
.end method

.method public needDrawPreviewTexture(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->needDrawPreviewTexture(Z)V

    .line 200
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->release()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    .line 143
    return-void
.end method

.method public restoreLayoutAfterCapture()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanorama2DLayout:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->restoreLayoutAfterCapture()V

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanorama2DLayout:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->upDatePreview(Landroid/graphics/Bitmap;)V

    .line 152
    return-void
.end method

.method public saveLayoutPostionBeforeCapture()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanorama2DLayout:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->saveLayoutPostionBeforeCapture()V

    .line 147
    return-void
.end method

.method public setClipRatio(F)V
    .locals 3
    .param p1, "ratio"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 79
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setClipRatio(F)V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mIsLeft2Right:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    sub-float v1, v2, p1

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setClipRatio(F)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setClipRatio(F)V

    goto :goto_0
.end method

.method public setClipRatioH(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setClipRatioH(F)V

    .line 89
    return-void
.end method

.method public setExpectedDirectionChangedListener(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;)V
    .locals 1
    .param p1, "l"    # Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanorama2DLayout:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->setListener(Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout$onExpectedDirectionChangedListener;)V

    .line 177
    return-void
.end method

.method public setIs16v9(Z)V
    .locals 1
    .param p1, "is"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setIs16v9(Z)V

    .line 185
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanorama2DLayout:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->setIs16vs9(Z)V

    .line 186
    return-void
.end method

.method public setIsLeft2Right(Z)V
    .locals 1
    .param p1, "is"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mIsLeft2Right:Z

    .line 190
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setIsLeft2Right(Z)V

    .line 191
    return-void
.end method

.method public setOriention(I)V
    .locals 0
    .param p1, "oriention"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mOriention:I

    .line 68
    return-void
.end method

.method public setPreviewBarClickable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanorama2DLayout:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->setPreviewBarClickable(Z)V

    .line 181
    return-void
.end method

.method public setPreviewTextureShow(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setPreviewTextureShow(Z)V

    .line 102
    return-void
.end method

.method public setPreviewViewCenterPointInScreen(II)V
    .locals 3
    .param p1, "centerx"    # I
    .param p2, "centery"    # I

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mIsLeft2Right:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setCenterPointInScreen(FF)V

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setCenterPointInScreen(FF)V

    goto :goto_0
.end method

.method public setPreviewViewOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setOrientation(I)V

    .line 106
    return-void
.end method

.method public setPreviewViewSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setViewSize(FF)V

    .line 76
    return-void
.end method

.method public setPreviewViewVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setVisibilityInGLThread(I)V

    .line 98
    return-void
.end method

.method public setScreenNail(Lcom/lenovo/scg/camera/CameraScreenNail;)V
    .locals 1
    .param p1, "s"    # Lcom/lenovo/scg/camera/CameraScreenNail;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setScreenNail(Lcom/lenovo/scg/camera/CameraScreenNail;)V

    .line 44
    return-void
.end method

.method public setScreenSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setScreenSize(FF)V

    .line 72
    return-void
.end method

.method public showHint(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanorama2DLayout:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->showHint(Ljava/lang/String;)V

    .line 156
    if-eqz p1, :cond_0

    .line 157
    const/4 v0, 0x1

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mOriention:I

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->showHintBG(ZI)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mOriention:I

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->showHintBG(ZI)V

    goto :goto_0
.end method

.method public showHintBG(ZI)V
    .locals 3
    .param p1, "showBG"    # Z
    .param p2, "oriention"    # I

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanorama2DLayout:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->getHintColor()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanorama2DLayout:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->getHintRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->showHintBG(ILandroid/graphics/Rect;I)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->hideHintBG()V

    goto :goto_0
.end method

.method public showPreviewBar()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->showPreviewBar()V

    .line 59
    return-void
.end method

.method public upDatePreview(Landroid/graphics/Bitmap;ZI)V
    .locals 4
    .param p1, "bp"    # Landroid/graphics/Bitmap;
    .param p2, "showTexture"    # Z
    .param p3, "offsetY"    # I

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setPreviewBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->needDrawPreviewTexture(Z)V

    .line 113
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewViewWidthCapturing:I

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewViewHeight:I

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewViewHeight:I

    mul-int/2addr v2, v3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x3e8

    div-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setPreviewViewSize(II)V

    .line 115
    const v0, 0x3eaaaaab

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setClipRatio(F)V

    .line 116
    if-eqz p3, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    div-int v0, p3, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setClipRatioH(F)V

    .line 118
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->getImageViewWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x19

    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewViewHeight:I

    mul-int/2addr v2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x3e8

    div-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setPreviewViewCenterPointInScreen(II)V

    .line 120
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setPreviewTextureShow(Z)V

    .line 121
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanorama2DLayout:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->getImageViewWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    add-int/lit8 v1, v1, 0xa

    div-int/lit8 v2, p3, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->setIndictorArrow(II)V

    goto :goto_0

    .line 117
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setClipRatioH(F)V

    goto :goto_1
.end method

.method public upDatePreview([BIIII)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "thumbnailYUVWidth"    # I
    .param p3, "thumbnailYUVHeight"    # I
    .param p4, "thumbnailLeft"    # I
    .param p5, "thumbnailTop"    # I

    .prologue
    const/4 v2, 0x0

    .line 204
    if-nez p5, :cond_0

    if-eqz p3, :cond_1

    .line 205
    :cond_0
    const v0, 0x3eaaaaab

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setClipRatio(F)V

    .line 206
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewViewWidthCapturing:I

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewViewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setPreviewViewSize(II)V

    .line 207
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->setPreviewTextureShow(Z)V

    .line 208
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mIsLeft2Right:Z

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanorama2DLayout:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    sub-int/2addr v1, p5

    add-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->setIndictorArrow(II)V

    .line 213
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanoramaRealTimePreviewView:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setPreviewYUVData([BIIII)V

    .line 214
    return-void

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaModeUI;->mPanorama2DLayout:Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;

    sget v1, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    sub-int/2addr v1, p5

    sub-int/2addr v1, p3

    add-int/lit16 v1, v1, -0x12c

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/mode/ui/Panorama2DLayout;->setIndictorArrow(II)V

    goto :goto_0
.end method
