.class public abstract Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/ScreenNail;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;,
        Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;,
        Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;,
        Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;,
        Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;,
        Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$Controller;
    }
.end annotation


# static fields
.field private static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static final TAG:Ljava/lang/String; = "SurfaceTextureScreenNail"


# instance fields
.field protected mCameraMainHandle:Landroid/os/Handler;

.field private mController:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$Controller;

.field private mDrawRect:Landroid/graphics/Rect;

.field private mDrawTarget:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

.field private mDuplicateFrames:I

.field protected mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

.field private mFboDraw:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

.field private mFboDrawHorizontal:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

.field private mFboDrawVertical:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

.field private mGLRoot:Lcom/lenovo/scg/gallery3d/ui/GLRoot;

.field private mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;

.field private mHasTexture:Z

.field private mHeight:I

.field private mISavePreview:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;

.field private mMirroType:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

.field private mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

.field private mPreviewCbTextureRGBA8888:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;

.field private mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

.field private mPreviewFrames:I

.field private mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

.field private mRcSavePreview:Landroid/graphics/Rect;

.field private mSavePreviewMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mToastBackGroundManager:Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

.field private mTransform:[F

.field private mWidth:I

.field private mbmpPreview:Landroid/graphics/Bitmap;

.field tlast:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 888
    const-string v0, "LeConvertDataToTexture"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 889
    invoke-static {}, Lcom/lenovo/scg/le3deffect/Le3DEffect;->loadNativeLibs()V

    .line 890
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    .line 64
    iput-boolean v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 369
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->tlast:J

    .line 795
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDuplicateFrames:I

    .line 797
    iput v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewFrames:I

    .line 120
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->Normal:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->setPreviewTexDrawMode(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;)V

    .line 121
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetScreen:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDrawTarget:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    .line 122
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;->MirroNone:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mMirroType:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    .line 123
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;->SaveNone:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mSavePreviewMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGLRoot:Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDrawTarget:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;
    .param p1, "x1"    # Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDrawTarget:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->resetFboDrawTexture()V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)Lcom/lenovo/scg/common/le3d/GaussBlurManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;Lcom/lenovo/scg/common/le3d/GaussBlurManager;)Lcom/lenovo/scg/common/le3d/GaussBlurManager;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;
    .param p1, "x1"    # Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mToastBackGroundManager:Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;)Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;
    .param p1, "x1"    # Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mToastBackGroundManager:Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    return-object p1
.end method

.method private getYOffset(II)I
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 989
    const/4 v1, 0x0

    .line 990
    .local v1, "yOffset":I
    const/4 v0, 0x0

    .line 991
    .local v0, "bRatio_4_3":Z
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->isGaussBlur()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 992
    int-to-float v2, p2

    int-to-float v3, p1

    div-float/2addr v2, v3

    const v3, 0x3faaaaab

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 993
    const/4 v0, 0x1

    .line 995
    :cond_0
    if-eqz v0, :cond_1

    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->CameraId:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    if-ne p1, v2, :cond_1

    .line 996
    sget v2, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/lenovo/scg/camera/CameraUtil;->RATIO_4_3_DEFAULT_TRANS_Y:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 999
    :cond_1
    return v1
.end method

.method private isGaussBlur()Z
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->isGaussBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareFbo(Z)V
    .locals 4
    .param p1, "bVertical"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawVertical:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawVertical:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawVertical:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    if-eq v0, v1, :cond_1

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawVertical:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->recycle()V

    .line 312
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawVertical:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawHorizontal:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawHorizontal:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawHorizontal:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    if-eq v0, v1, :cond_3

    .line 319
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawHorizontal:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->recycle()V

    .line 320
    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawHorizontal:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawVertical:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-nez v0, :cond_4

    .line 325
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawVertical:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 328
    :cond_4
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawHorizontal:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-nez v0, :cond_5

    .line 330
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawHorizontal:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 333
    :cond_5
    if-eqz p1, :cond_6

    .line 335
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawVertical:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDraw:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_6
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawHorizontal:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDraw:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    goto :goto_0
.end method

.method private queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mController:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$Controller;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mController:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$Controller;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$Controller;->queueEvent(Ljava/lang/Runnable;)V

    .line 135
    :cond_0
    return-void
.end method

.method private static releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p0, "st"    # Landroid/graphics/SurfaceTexture;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 162
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_RELEASE_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 165
    :cond_0
    return-void
.end method

.method private resetFboDrawTexture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawVertical:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawVertical:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->recycle()V

    .line 273
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawVertical:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawHorizontal:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawHorizontal:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->recycle()V

    .line 279
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawHorizontal:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 281
    :cond_1
    return-void
.end method

.method private static setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p0, "st"    # Landroid/graphics/SurfaceTexture;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 154
    sget-boolean v0, Lcom/lenovo/scg/gallery3d/common/ApiHelper;->HAS_SET_DEFALT_BUFFER_SIZE:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method public SetDrawTarget(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    .prologue
    .line 247
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$1;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;)V

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->queueEvent(Ljava/lang/Runnable;)V

    .line 265
    return-void
.end method

.method public acquireSurfaceTexture(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 3
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 142
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    const v1, 0x8d65

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;-><init>(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    .line 143
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;->setSize(II)V

    .line 144
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V

    .line 146
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 147
    monitor-enter p0

    .line 148
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 149
    monitor-exit p0

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroyGaussBlur()V
    .locals 1

    .prologue
    .line 735
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$5;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$5;-><init>(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)V

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->queueEvent(Ljava/lang/Runnable;)V

    .line 745
    return-void
.end method

.method public destroyToastBackGround()V
    .locals 1

    .prologue
    .line 937
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$10;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$10;-><init>(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)V

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->queueEvent(Ljava/lang/Runnable;)V

    .line 946
    return-void
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 31
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 373
    .local v28, "t":J
    const-string v4, "SurfaceTextureScreenNail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GL_draw interval = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->tlast:J

    sub-long v10, v28, v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->tlast:J

    .line 375
    monitor-enter p0

    .line 376
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    if-nez v4, :cond_0

    monitor-exit p0

    .line 669
    :goto_0
    return-void

    .line 377
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {v4, v6}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDrawTarget:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    sget-object v6, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetScreen:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    if-ne v4, v6, :cond_14

    .line 382
    const/16 v22, 0x0

    .line 384
    .local v22, "isFinish":Z
    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 385
    div-int/lit8 v4, p4, 0x2

    add-int v20, p2, v4

    .line 386
    .local v20, "cx":I
    div-int/lit8 v4, p5, 0x2

    add-int v21, p3, v4

    .line 388
    .local v21, "cy":I
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->getYOffset(II)I

    move-result v30

    .line 389
    .local v30, "yOffset":I
    add-int v21, v21, v30

    .line 391
    move/from16 v0, v20

    int-to-float v4, v0

    move/from16 v0, v21

    int-to-float v6, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 392
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v6, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    .line 393
    move/from16 v0, v20

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v21

    neg-int v6, v0

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v6}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    .line 394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 398
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->isGaussBlur()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 399
    const/16 v16, 0x0

    .line 400
    .local v16, "bRatio_16_9":Z
    move/from16 v0, p5

    int-to-float v4, v0

    move/from16 v0, p4

    int-to-float v6, v0

    div-float/2addr v4, v6

    const v6, 0x3fe38e39

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v6, 0x3c23d70a    # 0.01f

    cmpg-float v4, v4, v6

    if-gez v4, :cond_1

    .line 401
    const/16 v16, 0x1

    .line 403
    :cond_1
    if-eqz v16, :cond_6

    .line 404
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;->getId()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->getGaussBlurFBO(IIIZI)Z

    move-result v22

    .line 409
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->getGaussBlurFBOTexture()Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    move-result-object v5

    .line 411
    .local v5, "texture":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    if-eqz v5, :cond_2

    .line 414
    if-eqz v16, :cond_7

    .line 415
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-interface/range {v4 .. v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIIII)V

    .line 524
    .end local v5    # "texture":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .end local v16    # "bRatio_16_9":Z
    :cond_2
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 643
    .end local v20    # "cx":I
    .end local v21    # "cy":I
    .end local v22    # "isFinish":Z
    .end local v30    # "yOffset":I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mSavePreviewMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;

    sget-object v6, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;->SaveAllScreen:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;

    if-ne v4, v6, :cond_24

    .line 645
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mISavePreview:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;

    if-eqz v4, :cond_5

    .line 647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mbmpPreview:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    .line 649
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mbmpPreview:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Utils;->readCurrentFBO(Landroid/graphics/Bitmap;)V

    .line 651
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mISavePreview:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mbmpPreview:Landroid/graphics/Bitmap;

    invoke-interface {v4, v6}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;->onSavePreview(Landroid/graphics/Bitmap;)V

    .line 652
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mbmpPreview:Landroid/graphics/Bitmap;

    .line 653
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mISavePreview:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;

    .line 654
    sget-object v4, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;->SaveNone:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mSavePreviewMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;

    .line 668
    :cond_5
    :goto_4
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 407
    .restart local v16    # "bRatio_16_9":Z
    .restart local v20    # "cx":I
    .restart local v21    # "cy":I
    .restart local v22    # "isFinish":Z
    .restart local v30    # "yOffset":I
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    invoke-virtual {v6}, Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;->getId()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    const/4 v8, 0x1

    sget v9, Lcom/lenovo/scg/camera/CameraUtil;->RATIO_4_3_DEFAULT_TRANS_Y:F

    float-to-int v9, v9

    invoke-virtual/range {v4 .. v9}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->getGaussBlurFBO(IIIZI)Z

    move-result v22

    goto :goto_1

    .line 424
    .restart local v5    # "texture":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    :cond_7
    if-gez p3, :cond_8

    .line 425
    sget v25, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    .line 426
    .local v25, "nScreenW":I
    sget v24, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    .line 431
    .local v24, "nScreenH":I
    :goto_5
    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    sub-int v4, v25, v4

    div-int/lit8 v7, v4, 0x2

    .line 432
    .local v7, "x0":I
    sget v4, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    sub-int v4, v24, v4

    div-int/lit8 v8, v4, 0x2

    .line 433
    .local v8, "y0":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    sget v9, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    sget v10, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    move-object/from16 v4, p1

    invoke-interface/range {v4 .. v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIIII)V

    goto :goto_2

    .line 428
    .end local v7    # "x0":I
    .end local v8    # "y0":I
    .end local v24    # "nScreenH":I
    .end local v25    # "nScreenW":I
    :cond_8
    sget v25, Lcom/lenovo/scg/camera/CameraUtil;->mScreenWidth:I

    .line 429
    .restart local v25    # "nScreenW":I
    sget v24, Lcom/lenovo/scg/camera/CameraUtil;->mScreenHeight:I

    .restart local v24    # "nScreenH":I
    goto :goto_5

    .line 440
    .end local v5    # "texture":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .end local v16    # "bRatio_16_9":Z
    .end local v24    # "nScreenH":I
    .end local v25    # "nScreenW":I
    :cond_9
    sget-object v4, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->Normal:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-ne v4, v6, :cond_a

    .line 441
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v9, v10}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->getTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;ZII)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-result-object v5

    .line 442
    .restart local v5    # "texture":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    move-object/from16 v9, p1

    move-object v10, v5

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    invoke-interface/range {v9 .. v15}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIIII)V

    goto/16 :goto_2

    .line 443
    .end local v5    # "texture":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    :cond_a
    sget-object v4, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->Normal_Self_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-ne v4, v6, :cond_c

    .line 444
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v9, v10}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->getTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;ZII)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-result-object v5

    .line 445
    .restart local v5    # "texture":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    move-object/from16 v9, p1

    move-object v10, v5

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    invoke-interface/range {v9 .. v15}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIIII)V

    .line 446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->getPreviewTexDataBufManager()Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    move-result-object v27

    .line 447
    .local v27, "ptdbMngr":Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;
    if-eqz v27, :cond_2

    .line 448
    monitor-enter v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :try_start_2
    invoke-virtual/range {v27 .. v27}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->getBufferForConvertToTexture()Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    move-result-object v19

    .line 450
    .local v19, "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    if-eqz v19, :cond_b

    .line 451
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->returnBufferForDealOut(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V

    .line 454
    :cond_b
    monitor-exit v27

    goto/16 :goto_2

    .end local v19    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    :catchall_1
    move-exception v4

    monitor-exit v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v4

    .line 457
    .end local v5    # "texture":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .end local v27    # "ptdbMngr":Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;
    :cond_c
    sget-object v4, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->RGBA8888_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-ne v4, v6, :cond_10

    .line 458
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureRGBA8888:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;

    if-eqz v4, :cond_2

    .line 459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->getPreviewTexDataBufManager()Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    move-result-object v27

    .line 460
    .restart local v27    # "ptdbMngr":Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;
    if-eqz v27, :cond_f

    .line 461
    monitor-enter v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 462
    :try_start_4
    invoke-virtual/range {v27 .. v27}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->getBufferForConvertToTexture()Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    move-result-object v19

    .line 463
    .restart local v19    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    if-eqz v19, :cond_d

    .line 464
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureRGBA8888:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;->SetElementsData(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureRGBA8888:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    move-object/from16 v9, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    invoke-interface/range {v9 .. v15}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;[FIIII)V

    .line 468
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->returnBufferForDealOut(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V

    .line 469
    const/16 v19, 0x0

    .line 470
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewFrames:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewFrames:I

    .line 479
    :goto_6
    monitor-exit v27

    goto/16 :goto_2

    .end local v19    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    :catchall_2
    move-exception v4

    monitor-exit v27
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 472
    .restart local v19    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    :cond_d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureRGBA8888:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;->hasSetData()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 473
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureRGBA8888:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    move-object/from16 v9, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    invoke-interface/range {v9 .. v15}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;[FIIII)V

    .line 474
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDuplicateFrames:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDuplicateFrames:I

    goto :goto_6

    .line 476
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    move-object/from16 v9, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    invoke-interface/range {v9 .. v15}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIIII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    .line 481
    .end local v19    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    :cond_f
    :try_start_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDuplicateFrames:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDuplicateFrames:I

    goto/16 :goto_2

    .line 484
    .end local v27    # "ptdbMngr":Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;
    :cond_10
    sget-object v4, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->YUV420SP_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-ne v4, v6, :cond_2

    .line 485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    if-eqz v4, :cond_2

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->getPreviewTexDataBufManager()Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    move-result-object v27

    .line 487
    .restart local v27    # "ptdbMngr":Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;
    if-eqz v27, :cond_13

    .line 488
    monitor-enter v27
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 489
    :try_start_8
    invoke-virtual/range {v27 .. v27}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->getBufferForConvertToTexture()Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    move-result-object v19

    .line 490
    .restart local v19    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    if-eqz v19, :cond_11

    .line 497
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->SetElementsData(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    move-object/from16 v9, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    invoke-interface/range {v9 .. v15}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;[FIIII)V

    .line 501
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->returnBufferForDealOut(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V

    .line 502
    const/16 v19, 0x0

    .line 504
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewFrames:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewFrames:I

    .line 505
    const-string v4, "SurfaceTextureFrames"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPreviewFrames = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewFrames:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_7
    monitor-exit v27

    goto/16 :goto_2

    .end local v19    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    :catchall_3
    move-exception v4

    monitor-exit v27
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 507
    .restart local v19    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    :cond_11
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->hasSetData()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 508
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    move-object/from16 v9, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    invoke-interface/range {v9 .. v15}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;[FIIII)V

    .line 509
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDuplicateFrames:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDuplicateFrames:I

    .line 510
    const-string v4, "SurfaceTextureFrames"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDuplicateFrames = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDuplicateFrames:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 512
    :cond_12
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    move-object/from16 v9, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    invoke-interface/range {v9 .. v15}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIIII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    .line 517
    .end local v19    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    :cond_13
    :try_start_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDuplicateFrames:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDuplicateFrames:I

    .line 518
    const-string v4, "SurfaceTextureFrames"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDuplicateFrames = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDuplicateFrames:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 526
    .end local v20    # "cx":I
    .end local v21    # "cy":I
    .end local v22    # "isFinish":Z
    .end local v27    # "ptdbMngr":Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;
    .end local v30    # "yOffset":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDrawTarget:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    sget-object v6, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;->TargetFbo:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eDrawTarget;

    if-ne v4, v6, :cond_3

    .line 529
    const/16 v26, 0x0

    .line 530
    .local v26, "orienation":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGLRoot:Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    if-eqz v4, :cond_15

    .line 531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGLRoot:Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    invoke-interface {v4}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v26

    .line 533
    :cond_15
    move/from16 v0, v26

    rem-int/lit16 v4, v0, 0xb4

    if-nez v4, :cond_18

    const/16 v17, 0x1

    .line 535
    .local v17, "bVertical":Z
    :goto_8
    const-string v4, "SurfaceTextureScreenNail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bVertical ="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "orienation = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "mGLRoot= "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGLRoot:Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/16 v23, 0x0

    .line 537
    .local v23, "nRotation":I
    if-nez v17, :cond_16

    .line 539
    const/16 v23, 0x5a

    .line 541
    :cond_16
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->prepareFbo(Z)V

    .line 543
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDraw:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->beginRenderTarget(Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;)V

    .line 544
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v6, v9, v10}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->clearBuffer(FFFF)V

    .line 545
    sget-object v4, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->Normal:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-ne v4, v6, :cond_1a

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mMirroType:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    sget-object v6, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;->MirroHorizontal:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    if-ne v4, v6, :cond_19

    .line 549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    const/4 v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v4, v6, v1, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture1_1(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIZ)V

    .line 640
    :cond_17
    :goto_9
    invoke-interface/range {p1 .. p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->endRenderTarget()V

    goto/16 :goto_3

    .line 533
    .end local v17    # "bVertical":Z
    .end local v23    # "nRotation":I
    :cond_18
    const/16 v17, 0x0

    goto :goto_8

    .line 553
    .restart local v17    # "bVertical":Z
    .restart local v23    # "nRotation":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v4, v6, v1, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture1_1(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIZ)V

    goto :goto_9

    .line 556
    :cond_1a
    sget-object v4, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->Normal_Self_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-ne v4, v6, :cond_1d

    .line 557
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mMirroType:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    sget-object v6, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;->MirroHorizontal:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    if-ne v4, v6, :cond_1c

    .line 559
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    const/4 v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v4, v6, v1, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture1_1(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIZ)V

    .line 565
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->getPreviewTexDataBufManager()Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    move-result-object v27

    .line 566
    .restart local v27    # "ptdbMngr":Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;
    if-eqz v27, :cond_17

    .line 567
    monitor-enter v27
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 568
    :try_start_c
    invoke-virtual/range {v27 .. v27}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->getBufferForConvertToTexture()Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    move-result-object v19

    .line 569
    .restart local v19    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    if-eqz v19, :cond_1b

    .line 570
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->returnBufferForDealOut(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V

    .line 573
    :cond_1b
    monitor-exit v27

    goto :goto_9

    .end local v19    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    :catchall_4
    move-exception v4

    monitor-exit v27
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v4

    .line 563
    .end local v27    # "ptdbMngr":Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v4, v6, v1, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture1_1(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIZ)V

    goto :goto_a

    .line 577
    :cond_1d
    sget-object v4, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->YUV420SP_Texture:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-ne v4, v6, :cond_17

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    if-eqz v4, :cond_17

    .line 581
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v4}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->getPreviewTexDataBufManager()Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;

    move-result-object v27

    .line 582
    .restart local v27    # "ptdbMngr":Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;
    if-eqz v27, :cond_23

    .line 584
    monitor-enter v27
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 586
    :try_start_e
    invoke-virtual/range {v27 .. v27}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->getBufferForConvertToTexture()Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;

    move-result-object v19

    .line 587
    .restart local v19    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    if-eqz v19, :cond_1f

    .line 589
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->SetElementsData(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mMirroType:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    sget-object v6, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;->MirroHorizontal:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    if-ne v4, v6, :cond_1e

    .line 592
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    const/4 v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v4, v6, v1, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture1_1(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;[FIZ)V

    .line 598
    :goto_b
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;->returnBufferForDealOut(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;)V

    .line 599
    const/16 v19, 0x0

    .line 600
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewFrames:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewFrames:I

    .line 601
    const-string v4, "SurfaceTextureFrames"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPreviewFrames = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewFrames:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :goto_c
    monitor-exit v27

    goto/16 :goto_9

    .end local v19    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    :catchall_5
    move-exception v4

    monitor-exit v27
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 596
    .restart local v19    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    :cond_1e
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v4, v6, v1, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture1_1(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;[FIZ)V

    goto :goto_b

    .line 605
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->hasSetData()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 607
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mMirroType:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    sget-object v6, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;->MirroHorizontal:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    if-ne v4, v6, :cond_20

    .line 609
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    const/4 v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v4, v6, v1, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture1_1(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;[FIZ)V

    .line 615
    :goto_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDuplicateFrames:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDuplicateFrames:I

    .line 616
    const-string v4, "SurfaceTextureFrames"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDuplicateFrames = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDuplicateFrames:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 613
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v4, v6, v1, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture1_1(Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;[FIZ)V

    goto :goto_d

    .line 620
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mMirroType:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    sget-object v6, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;->MirroHorizontal:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    if-ne v4, v6, :cond_22

    .line 622
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    const/4 v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v4, v6, v1, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture1_1(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIZ)V

    goto/16 :goto_c

    .line 626
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v4, v6, v1, v9}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->drawTexture1_1(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[FIZ)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto/16 :goto_c

    .line 634
    .end local v19    # "buf":Lcom/lenovo/scg/gallery3d/glrenderer/PreviewTexDataBuffer;
    :cond_23
    :try_start_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDuplicateFrames:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDuplicateFrames:I

    .line 635
    const-string v4, "SurfaceTextureFrames"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDuplicateFrames = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mDuplicateFrames:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 657
    .end local v17    # "bVertical":Z
    .end local v23    # "nRotation":I
    .end local v26    # "orienation":I
    .end local v27    # "ptdbMngr":Lcom/lenovo/scg/camera/previewcallback/PreviewTexDataBufManager;
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mSavePreviewMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;

    sget-object v6, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;->SaveClipRect:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;

    if-ne v4, v6, :cond_5

    .line 659
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mISavePreview:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mRcSavePreview:Landroid/graphics/Rect;

    if-eqz v4, :cond_5

    .line 661
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mRcSavePreview:Landroid/graphics/Rect;

    invoke-static {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Utils;->readCurrentFBO(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 662
    .local v18, "bmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mISavePreview:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;->onSavePreview(Landroid/graphics/Bitmap;)V

    .line 663
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mISavePreview:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;

    .line 664
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mRcSavePreview:Landroid/graphics/Rect;

    .line 665
    sget-object v4, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;->SaveNone:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mSavePreviewMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_4
.end method

.method public draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "source"    # Landroid/graphics/RectF;
    .param p3, "dest"    # Landroid/graphics/RectF;

    .prologue
    .line 677
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public finishGaussBlur()V
    .locals 1

    .prologue
    .line 723
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$4;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$4;-><init>(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)V

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->queueEvent(Ljava/lang/Runnable;)V

    .line 732
    return-void
.end method

.method public getFboDrawTexture()Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDraw:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    return-object v0
.end method

.method public getFboDrawTextureWithBg(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;[F[F)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .locals 8
    .param p1, "oldTexture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "rectArray"    # [F
    .param p3, "textColorArray"    # [F

    .prologue
    .line 360
    if-eqz p1, :cond_0

    .line 361
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->getTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;ZII[F[F)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    move-result-object v7

    .line 364
    :goto_0
    return-object v7

    :cond_0
    move-object v7, p1

    goto :goto_0
.end method

.method public getGaussBlurFboTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .locals 6
    .param p1, "oldTexture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    const/4 v4, 0x0

    .line 350
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->isGaussBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->getGaussBlurFBO(IIIZI)Z

    .line 352
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->getGaussBlurFBOTexture()Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    move-result-object p1

    .line 354
    .end local p1    # "oldTexture":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    :cond_0
    return-object p1
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    return v0
.end method

.method public getPreviewTexDrawMode()Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;ZII)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .locals 3
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "isExt"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 968
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mToastBackGroundManager:Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mToastBackGroundManager:Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->isShowTostBackGround()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 969
    if-eqz p1, :cond_0

    .line 970
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mToastBackGroundManager:Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->getTexture(IZII)Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    move-result-object v0

    .line 971
    .local v0, "basicTexture":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 980
    .end local v0    # "basicTexture":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .end local p1    # "texture":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    :cond_0
    return-object p1
.end method

.method public getTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;ZII[F[F)Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .locals 8
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .param p2, "isExt"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "rectArray"    # [F
    .param p6, "textColorArray"    # [F

    .prologue
    .line 950
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mToastBackGroundManager:Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mToastBackGroundManager:Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->isShowTostBackGround()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    if-eqz p1, :cond_0

    .line 952
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mToastBackGroundManager:Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;

    invoke-virtual {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/lenovo/scg/common/le3d/ToastBackGroundManager;->getTexture(IZII[F[F)Lcom/lenovo/scg/gallery3d/glrenderer/Le3DFBOTexture;

    move-result-object v7

    .line 953
    .local v7, "basicTexture":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    if-eqz v7, :cond_0

    move-object p1, v7

    .line 962
    .end local v7    # "basicTexture":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    .end local p1    # "texture":Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;
    :cond_0
    return-object p1
.end method

.method public getTransformMatrix()[F
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    return v0
.end method

.method public hideToastBackGround()V
    .locals 1

    .prologue
    .line 925
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$9;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$9;-><init>(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)V

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->queueEvent(Ljava/lang/Runnable;)V

    .line 934
    return-void
.end method

.method public initPreviewTextureRGBA8888()V
    .locals 3

    .prologue
    .line 876
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureRGBA8888:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;

    if-nez v0, :cond_0

    .line 877
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->getPreviewCbDataBufManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->getPreviewCbDataBufManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;-><init>(II)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureRGBA8888:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;

    .line 884
    :goto_0
    return-void

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureRGBA8888:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;->resetData()V

    .line 881
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureRGBA8888:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->getPreviewCbDataBufManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->getPreviewCbDataBufManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;->setSize(II)V

    goto :goto_0
.end method

.method public initPreviewTextureYUV420sp()V
    .locals 3

    .prologue
    .line 858
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    if-nez v0, :cond_0

    .line 859
    new-instance v0, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->getPreviewCbDataBufManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->getPreviewCbDataBufManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;-><init>(II)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    .line 866
    :goto_0
    return-void

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->resetData()V

    .line 863
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->getPreviewCbDataBufManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;->getPreviewCbDataBufManager()Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/previewcallback/PreviewCbDataBufManager;->getPreviewHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->setSize(II)V

    goto :goto_0
.end method

.method public isInGaussBlur()Z
    .locals 3

    .prologue
    .line 748
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    if-eqz v0, :cond_0

    .line 749
    const-string v0, "jiaxiaowei"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInGaussBlur------------------------mGaussBlurManager.isGaussBlur:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    invoke-virtual {v2}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->isGaussBlur()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGaussBlurManager:Lcom/lenovo/scg/common/le3d/GaussBlurManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/GaussBlurManager;->isGaussBlur()Z

    move-result v0

    .line 752
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract noDraw()V
.end method

.method public abstract onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract recycle()V
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    monitor-enter p0

    .line 173
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 174
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;->recycle()V

    .line 176
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    .line 177
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 178
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 180
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawVertical:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawVertical:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->recycle()V

    .line 183
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawVertical:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawHorizontal:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawHorizontal:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;->recycle()V

    .line 189
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mFboDrawHorizontal:Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;->deleteTextures()V

    .line 194
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureYUV420sp:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureYUV420sp;

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureRGBA8888:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureRGBA8888:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;->deleteTextures()V

    .line 199
    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCbTextureRGBA8888:Lcom/lenovo/scg/gallery3d/glrenderer/PreviewCbTextureRGBA8888;

    .line 204
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->destroyToastBackGround()V

    .line 205
    return-void

    .line 174
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resizeTexture()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;->setSize(II)V

    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-static {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V

    .line 224
    :cond_0
    return-void
.end method

.method public setCameraGaussBlurBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 756
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$6;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$6;-><init>(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->queueEvent(Ljava/lang/Runnable;)V

    .line 765
    return-void
.end method

.method public setCameraMainHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handle"    # Landroid/os/Handler;

    .prologue
    .line 823
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mCameraMainHandle:Landroid/os/Handler;

    .line 824
    return-void
.end method

.method public setController(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$Controller;)V
    .locals 0
    .param p1, "controller"    # Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$Controller;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mController:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$Controller;

    .line 129
    return-void
.end method

.method public setGLRoot(Lcom/lenovo/scg/gallery3d/ui/GLRoot;)V
    .locals 0
    .param p1, "root"    # Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mGLRoot:Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    .line 139
    return-void
.end method

.method public setMirroType(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;)V
    .locals 0
    .param p1, "type"    # Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mMirroType:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eMirroType;

    .line 300
    return-void
.end method

.method public setPreviewCallbackManager(Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;)V
    .locals 0
    .param p1, "previewCbManager"    # Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    .prologue
    .line 847
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewCallbackManager:Lcom/lenovo/scg/camera/previewcallback/PreviewCallbackManager;

    .line 848
    return-void
.end method

.method public setPreviewTexDrawMode(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    .prologue
    .line 810
    const-string v0, "SurfaceTextureScreenNail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mode= %d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-eq v0, p1, :cond_0

    .line 812
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    .line 814
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewTexDrawMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    sget-object v1, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;->Normal:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$PreviewTexDrawMode;

    if-ne v0, v1, :cond_0

    .line 815
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mCameraMainHandle:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mCameraMainHandle:Landroid/os/Handler;

    const/16 v1, 0x3039

    const-wide/16 v2, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 820
    :cond_0
    return-void
.end method

.method public setSavePreviewCb(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "cb"    # Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mISavePreview:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;

    .line 104
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mbmpPreview:Landroid/graphics/Bitmap;

    .line 105
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;->SaveAllScreen:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mSavePreviewMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;

    .line 106
    return-void
.end method

.method public setSavePreviewCbWithClip(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;)V
    .locals 1
    .param p1, "cb"    # Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mISavePreview:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$ISavePreview;

    .line 111
    sget-object v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;->SaveClipRect:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mSavePreviewMode:Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$eSavePreviewMode;

    .line 112
    return-void
.end method

.method public setSavePreviewClipRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rcClip"    # Landroid/graphics/Rect;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mRcSavePreview:Landroid/graphics/Rect;

    .line 117
    return-void
.end method

.method public setSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 208
    iput p1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    .line 209
    iput p2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    .line 213
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;

    iget v1, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/glrenderer/ExtTexture;->setSize(II)V

    .line 217
    :cond_0
    return-void
.end method

.method public showToastBackGround()V
    .locals 1

    .prologue
    .line 898
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$7;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$7;-><init>(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;)V

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->queueEvent(Ljava/lang/Runnable;)V

    .line 908
    return-void
.end method

.method public showToastBackGround([F[F)V
    .locals 1
    .param p1, "rectArray"    # [F
    .param p2, "textColorArray"    # [F

    .prologue
    .line 912
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$8;-><init>(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;[F[F)V

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->queueEvent(Ljava/lang/Runnable;)V

    .line 922
    return-void
.end method

.method public startGaussBlur(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "gaussExtRect"    # Landroid/graphics/Rect;
    .param p3, "functionChanged"    # Z

    .prologue
    .line 696
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$2;-><init>(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->queueEvent(Ljava/lang/Runnable;)V

    .line 707
    return-void
.end method

.method public startGaussBlur(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "gaussExtRect"    # Landroid/graphics/Rect;

    .prologue
    .line 710
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$3;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail$3;-><init>(Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->queueEvent(Ljava/lang/Runnable;)V

    .line 720
    return-void
.end method

.method protected updateTransformMatrix([F)V
    .locals 0
    .param p1, "matrix"    # [F

    .prologue
    .line 681
    return-void
.end method
