.class public Lcom/lenovo/scg/camera/effect/CameraOverlayView;
.super Lcom/lenovo/scg/gallery3d/ui/GLView;
.source "CameraOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/effect/CameraOverlayView$MyGestureListener;
    }
.end annotation


# instance fields
.field private duration:I

.field protected mContext:Landroid/content/Context;

.field private mEffectNameId:[I

.field private mEffectType:[Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

.field private mExtView:Lcom/lenovo/scg/camera/effect/ExtureImageGLView;

.field private mGestureListener:Lcom/lenovo/scg/camera/effect/CameraOverlayView$MyGestureListener;

.field private final mGestureRecognizer:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;

.field private mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

.field private mHideBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

.field private mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

.field private mHideListScroll:Lcom/lenovo/scg/camera/effect/NonScrollGLView;

.field private mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

.field private mScreenHeight:F

.field private mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

.field private mScreenWidth:F

.field protected mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

.field private mShowAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

.field private mShowBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

.field private mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

.field private mShowListScroll:Lcom/lenovo/scg/camera/effect/NonScrollGLView;

.field private mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/ui/GLView;-><init>()V

    .line 54
    const/16 v0, 0x320

    iput v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->duration:I

    .line 69
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/lenovo/scg/camera/effect/CameraOverlayView$MyGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/scg/camera/effect/CameraOverlayView$MyGestureListener;-><init>(Lcom/lenovo/scg/camera/effect/CameraOverlayView;Lcom/lenovo/scg/camera/effect/CameraOverlayView$1;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mGestureListener:Lcom/lenovo/scg/camera/effect/CameraOverlayView$MyGestureListener;

    .line 71
    new-instance v0, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;

    iget-object v1, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mGestureListener:Lcom/lenovo/scg/camera/effect/CameraOverlayView$MyGestureListener;

    invoke-direct {v0, p1, v1}, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer$Listener;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mGestureRecognizer:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScreenWidth:F

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScreenHeight:F

    .line 74
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->initViews()V

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/scg/camera/effect/CameraOverlayView;)Lcom/lenovo/scg/camera/effect/BitmapImageGLView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/CameraOverlayView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/effect/CameraOverlayView;)Lcom/lenovo/scg/camera/effect/BitmapImageGLView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/CameraOverlayView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/scg/camera/effect/CameraOverlayView;)Lcom/lenovo/scg/camera/effect/BitmapImageGLView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/effect/CameraOverlayView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    return-object v0
.end method

.method private getDimensOfResource(I)F
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method


# virtual methods
.method public initViews()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/16 v8, 0x9

    .line 84
    const/16 v4, 0xe

    new-array v4, v4, [Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    sget-object v5, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Lomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v5, v4, v10

    sget-object v5, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Gray:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v5, v4, v9

    const/4 v5, 0x2

    sget-object v6, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Sepia:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Negative:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Lomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget-object v6, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Gray:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Sepia:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Negative:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    sget-object v6, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Lomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v6, v4, v5

    sget-object v5, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Gray:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v5, v4, v8

    const/16 v5, 0xa

    sget-object v6, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Sepia:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v6, v4, v5

    const/16 v5, 0xb

    sget-object v6, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Negative:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    sget-object v6, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_Lomo:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v6, v4, v5

    const/16 v5, 0xd

    sget-object v6, Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;->LE3D_Effect_None:Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    aput-object v6, v4, v5

    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mEffectType:[Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    .line 89
    new-array v4, v8, [I

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mEffectNameId:[I

    .line 95
    new-instance v4, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    .line 96
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    const v5, 0x7f0201f7

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setBitmap(I)V

    .line 97
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 99
    new-instance v4, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    .line 100
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    const v5, 0x7f0201f3

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setBitmap(I)V

    .line 101
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 103
    new-instance v4, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mExtView:Lcom/lenovo/scg/camera/effect/ExtureImageGLView;

    .line 104
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mExtView:Lcom/lenovo/scg/camera/effect/ExtureImageGLView;

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 106
    new-instance v4, Lcom/lenovo/scg/camera/effect/ScrollGLView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lenovo/scg/camera/effect/ScrollGLView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    .line 107
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 108
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    iget v5, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScreenWidth:F

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->setScreenWidth(F)V

    .line 109
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    iget v5, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScreenHeight:F

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->setScreenHeight(F)V

    .line 111
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 112
    new-instance v3, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;-><init>(Landroid/content/Context;)V

    .line 113
    .local v3, "imageView":Lcom/lenovo/scg/camera/effect/BitmapImageGLView;
    const v4, 0x7f0201f8

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setBitmap(I)V

    .line 114
    invoke-virtual {v3, v9}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setVisibility(I)V

    .line 115
    new-instance v4, Lcom/lenovo/scg/camera/effect/CameraOverlayView$1;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/effect/CameraOverlayView$1;-><init>(Lcom/lenovo/scg/camera/effect/CameraOverlayView;)V

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setOnClickListener(Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;)V

    .line 124
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v3    # "imageView":Lcom/lenovo/scg/camera/effect/BitmapImageGLView;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_1

    .line 128
    new-instance v3, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;-><init>(Landroid/content/Context;)V

    .line 129
    .local v3, "imageView":Lcom/lenovo/scg/camera/effect/ExtureImageGLView;
    new-instance v4, Lcom/lenovo/scg/camera/effect/CameraOverlayView$2;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/effect/CameraOverlayView$2;-><init>(Lcom/lenovo/scg/camera/effect/CameraOverlayView;)V

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->setOnClickListener(Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;)V

    .line 139
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 142
    .end local v3    # "imageView":Lcom/lenovo/scg/camera/effect/ExtureImageGLView;
    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_2

    .line 143
    new-instance v3, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;-><init>(Landroid/content/Context;)V

    .line 144
    .local v3, "imageView":Lcom/lenovo/scg/camera/effect/BitmapImageGLView;
    const v4, 0x7f0201f6

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setBitmap(I)V

    .line 145
    new-instance v4, Lcom/lenovo/scg/camera/effect/CameraOverlayView$3;

    invoke-direct {v4, p0}, Lcom/lenovo/scg/camera/effect/CameraOverlayView$3;-><init>(Lcom/lenovo/scg/camera/effect/CameraOverlayView;)V

    invoke-virtual {v3, v4}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setOnClickListener(Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;)V

    .line 154
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {v4, v3}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 160
    .end local v3    # "imageView":Lcom/lenovo/scg/camera/effect/BitmapImageGLView;
    :cond_2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 161
    .local v1, "effectPaint":Landroid/graphics/Paint;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v8, :cond_3

    .line 163
    new-instance v0, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, "effectNameView":Lcom/lenovo/scg/camera/effect/BitmapImageGLView;
    const-string/jumbo v4, "tyl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mEffectNameId[i] ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mEffectNameId:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mEffectNameId:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0902c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0902c4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v0, v4, v5, v1, v6}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setString(Ljava/lang/String;ILandroid/graphics/Paint;I)V

    .line 169
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {v4, v0}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 175
    .end local v0    # "effectNameView":Lcom/lenovo/scg/camera/effect/BitmapImageGLView;
    :cond_3
    new-instance v4, Lcom/lenovo/scg/camera/effect/NonScrollGLView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideListScroll:Lcom/lenovo/scg/camera/effect/NonScrollGLView;

    .line 176
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideListScroll:Lcom/lenovo/scg/camera/effect/NonScrollGLView;

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 178
    new-instance v4, Lcom/lenovo/scg/camera/effect/NonScrollGLView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowListScroll:Lcom/lenovo/scg/camera/effect/NonScrollGLView;

    .line 179
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowListScroll:Lcom/lenovo/scg/camera/effect/NonScrollGLView;

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 181
    new-instance v4, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    .line 183
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    const v5, 0x7f0201f1

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setBitmap(I)V

    .line 184
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    invoke-virtual {v4, v10}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setVisibility(I)V

    .line 185
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideListScroll:Lcom/lenovo/scg/camera/effect/NonScrollGLView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 186
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideBtnView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    new-instance v5, Lcom/lenovo/scg/camera/effect/CameraOverlayView$4;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/camera/effect/CameraOverlayView$4;-><init>(Lcom/lenovo/scg/camera/effect/CameraOverlayView;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setOnClickListener(Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;)V

    .line 202
    new-instance v4, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    .line 205
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    const v5, 0x7f0201f2

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setBitmap(I)V

    .line 206
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    invoke-virtual {v4, v9}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setVisibility(I)V

    .line 208
    new-instance v4, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    .line 210
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    const v5, 0x7f0201f4

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setBitmap(I)V

    .line 211
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    invoke-virtual {v4, v9}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setVisibility(I)V

    .line 212
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowListScroll:Lcom/lenovo/scg/camera/effect/NonScrollGLView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->addComponent(Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 213
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowBtnView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    new-instance v5, Lcom/lenovo/scg/camera/effect/CameraOverlayView$5;

    invoke-direct {v5, p0}, Lcom/lenovo/scg/camera/effect/CameraOverlayView$5;-><init>(Lcom/lenovo/scg/camera/effect/CameraOverlayView;)V

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setOnClickListener(Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;)V

    .line 228
    new-instance v4, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    iget-object v5, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    .line 229
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    const v5, 0x7f0201f5

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setBitmap(I)V

    .line 230
    iget-object v4, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowBtnDownView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    invoke-virtual {v4, v10}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->setVisibility(I)V

    .line 232
    return-void

    .line 89
    :array_0
    .array-data 4
        0x7f0f008a
        0x7f0f008b
        0x7f0f008c
        0x7f0f008d
        0x7f0f008e
        0x7f0f008f
        0x7f0f0090
        0x7f0f0091
        0x7f0f0092
    .end array-data
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changeSize"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/16 v7, 0x2ba

    const/16 v6, 0x24e

    const/16 v5, 0x1ea

    const/16 v3, 0x22

    const/16 v4, 0x19

    .line 305
    const-string/jumbo v0, "tyl"

    const-string/jumbo v1, "onLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    if-nez v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    const/16 v1, 0x4de

    const/16 v2, 0x41f

    const/16 v3, 0x638

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->layout(IIII)V

    .line 308
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    const/16 v1, 0x4de

    const/16 v2, 0x41f

    const/16 v3, 0x638

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->layout(IIII)V

    .line 310
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideListScroll:Lcom/lenovo/scg/camera/effect/NonScrollGLView;

    const/16 v1, 0x46f

    const/16 v2, 0x4d3

    invoke-virtual {v0, v5, v1, v6, v2}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->layout(IIII)V

    .line 311
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowListScroll:Lcom/lenovo/scg/camera/effect/NonScrollGLView;

    const/16 v1, 0x5c8

    const/16 v2, 0x62c

    invoke-virtual {v0, v5, v1, v6, v2}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->layout(IIII)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    const/16 v1, 0x65a

    const/16 v2, 0x414

    invoke-virtual {v0, v3, v7, v1, v2}, Lcom/lenovo/scg/camera/effect/BitmapImageGLView;->layout(IIII)V

    .line 315
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    const/16 v1, 0x65a

    const/16 v2, 0x414

    invoke-virtual {v0, v3, v7, v1, v2}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->layout(IIII)V

    .line 317
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideListScroll:Lcom/lenovo/scg/camera/effect/NonScrollGLView;

    const/16 v1, 0x300

    const/16 v2, 0x24a

    const/16 v3, 0x364

    const/16 v4, 0x2ae

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->layout(IIII)V

    .line 318
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowListScroll:Lcom/lenovo/scg/camera/effect/NonScrollGLView;

    const/16 v1, 0x2fe

    const/16 v2, 0x3bd

    const/16 v3, 0x362

    const/16 v4, 0x421

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/camera/effect/NonScrollGLView;->layout(IIII)V

    goto :goto_0
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mGestureRecognizer:Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/lenovo/scg/gallery3d/ui/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method protected render(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V
    .locals 4
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;

    .prologue
    .line 324
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->setEffectType()V

    .line 337
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowListScroll:Lcom/lenovo/scg/camera/effect/NonScrollGLView;

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->renderChild(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 338
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->update()V

    .line 340
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 341
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 342
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 343
    .local v0, "animTime":J
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v2, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->calculate(J)Z

    .line 344
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 345
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->renderChild(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 346
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->renderChild(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 347
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    .line 367
    .end local v0    # "animTime":J
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideListScroll:Lcom/lenovo/scg/camera/effect/NonScrollGLView;

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->renderChild(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 370
    :cond_1
    return-void

    .line 348
    :cond_2
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->isActive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 349
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->save()V

    .line 350
    invoke-static {}, Lcom/lenovo/scg/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    .line 351
    .restart local v0    # "animTime":J
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v2, v0, v1}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->calculate(J)Z

    .line 352
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v2, p1}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->apply(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 353
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->renderChild(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 354
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->renderChild(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 355
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;->restore()V

    goto :goto_0

    .line 357
    .end local v0    # "animTime":J
    :cond_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    if-nez v2, :cond_5

    .line 358
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mVertBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->renderChild(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    .line 363
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->renderChild(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    goto :goto_0

    .line 360
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->getGLRoot()Lcom/lenovo/scg/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/scg/gallery3d/ui/GLRoot;->getCompensation()I

    move-result v2

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_4

    .line 361
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHorBackgroundView:Lcom/lenovo/scg/camera/effect/BitmapImageGLView;

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->renderChild(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    goto :goto_1
.end method

.method public setEffectType()V
    .locals 4

    .prologue
    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->getComponentCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 256
    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->getComponent(I)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;

    .line 258
    .local v1, "view":Lcom/lenovo/scg/camera/effect/ExtureImageGLView;
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mEffectType:[Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;

    add-int/lit8 v3, v0, -0x9

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->setEffectType(Lcom/lenovo/scg/camera/effect/Le3dLiveEffectFactory$Type;)V

    .line 255
    .end local v1    # "view":Lcom/lenovo/scg/camera/effect/ExtureImageGLView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_1
    return-void
.end method

.method public setExtRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->getComponentCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 294
    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->getComponent(I)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;

    .line 296
    .local v1, "view":Lcom/lenovo/scg/camera/effect/ExtureImageGLView;
    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->setExtRect(Landroid/graphics/Rect;)V

    .line 293
    .end local v1    # "view":Lcom/lenovo/scg/camera/effect/ExtureImageGLView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_1
    return-void
.end method

.method public setScreenNail(Lcom/lenovo/scg/gallery3d/ui/ScreenNail;)V
    .locals 0
    .param p1, "s"    # Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScreenNail:Lcom/lenovo/scg/gallery3d/ui/ScreenNail;

    .line 265
    return-void
.end method

.method public setTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V
    .locals 3
    .param p1, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;

    .prologue
    .line 245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->getComponentCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 246
    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->getComponent(I)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;

    .line 248
    .local v1, "view":Lcom/lenovo/scg/camera/effect/ExtureImageGLView;
    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->setTexture(Lcom/lenovo/scg/gallery3d/glrenderer/BasicTexture;)V

    .line 245
    .end local v1    # "view":Lcom/lenovo/scg/camera/effect/ExtureImageGLView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    return-void
.end method

.method public setTransformMatrix([F)V
    .locals 3
    .param p1, "matrix"    # [F

    .prologue
    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->getComponentCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 277
    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mScrollView:Lcom/lenovo/scg/camera/effect/ScrollGLView;

    invoke-virtual {v2, v0}, Lcom/lenovo/scg/camera/effect/ScrollGLView;->getComponent(I)Lcom/lenovo/scg/gallery3d/ui/GLView;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;

    .line 279
    .local v1, "view":Lcom/lenovo/scg/camera/effect/ExtureImageGLView;
    invoke-virtual {v1, p1}, Lcom/lenovo/scg/camera/effect/ExtureImageGLView;->setTransformMatrix([F)V

    .line 276
    .end local v1    # "view":Lcom/lenovo/scg/camera/effect/ExtureImageGLView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_1
    return-void
.end method

.method public startEffectHideAnimation()V
    .locals 3

    .prologue
    .line 235
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    const/high16 v1, 0x43c80000    # 400.0f

    iget v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->duration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    .line 236
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mHideAnim:Lcom/lenovo/scg/camera/effect/EffectHideAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectHideAnimation;->start()V

    .line 237
    return-void
.end method

.method public startEffectShowAnimation()V
    .locals 3

    .prologue
    .line 240
    new-instance v0, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    const/high16 v1, 0x43c80000    # 400.0f

    iget v2, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->duration:I

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;-><init>(FI)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    .line 241
    iget-object v0, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView;->mShowAnim:Lcom/lenovo/scg/camera/effect/EffectShowAnimation;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/effect/EffectShowAnimation;->start()V

    .line 242
    return-void
.end method
