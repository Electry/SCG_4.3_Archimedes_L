.class public Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;
.super Ljava/lang/Object;
.source "MiniCameraFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$MainHandler;,
        Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$Listener;
    }
.end annotation


# static fields
.field private static final RESET_TOUCH_FOCUS:I = 0x0

.field private static final RESET_TOUCH_FOCUS_DELAY:I = 0x258

.field private static final STATE_FAIL:I = 0x4

.field private static final STATE_FOCUSING:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FocusManager"


# instance fields
.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mDisplayOrientation:I

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusDefault:Z

.field private mFocusMode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mListener:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$Listener;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreferences:Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;Landroid/hardware/Camera$Parameters;[Ljava/lang/String;Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$Listener;Landroid/os/Looper;)V
    .locals 1
    .param p1, "pre"    # Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p3, "defaultFocusModes"    # [Ljava/lang/String;
    .param p4, "listener"    # Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$Listener;
    .param p5, "looper"    # Landroid/os/Looper;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mState:I

    .line 108
    new-instance v0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$MainHandler;

    invoke-direct {v0, p0, p5}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$MainHandler;-><init>(Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mHandler:Landroid/os/Handler;

    .line 110
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreferences:Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;

    .line 112
    invoke-virtual {p0, p2}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusDefault:Z

    .line 116
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 118
    iput-object p3, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mListener:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$Listener;

    .line 121
    return-void
.end method

.method private calculateTapArea(IIFLandroid/graphics/Rect;)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "areaMultiple"    # F
    .param p4, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 247
    iget v4, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreviewWidth:I

    iget v5, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreviewHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    const/high16 v5, 0x41a00000    # 20.0f

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 248
    .local v0, "areaSize":I
    sub-int v4, p1, v0

    iget v5, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreviewWidth:I

    mul-int/lit8 v6, v0, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v7, v5}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->clamp(III)I

    move-result v1

    .line 249
    .local v1, "left":I
    sub-int v4, p2, v0

    iget v5, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreviewHeight:I

    mul-int/lit8 v6, v0, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v7, v5}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->clamp(III)I

    move-result v3

    .line 251
    .local v3, "top":I
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v4, v1

    int-to-float v5, v3

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v1

    int-to-float v6, v6

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v3

    int-to-float v7, v7

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 252
    .local v2, "rectF":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 253
    invoke-static {v2, p4}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 254
    return-void
.end method

.method private initializeFocusAreas(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusArea:Ljava/util/List;

    .line 259
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusArea:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->calculateTapArea(IIFLandroid/graphics/Rect;)V

    .line 264
    return-void
.end method

.method private initializeMeteringAreas(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mMeteringArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mMeteringArea:Ljava/util/List;

    .line 269
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_0
    const/high16 v1, 0x3fc00000    # 1.5f

    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->calculateTapArea(IIFLandroid/graphics/Rect;)V

    .line 276
    return-void
.end method

.method private setMatrix()V
    .locals 5

    .prologue
    .line 235
    iget v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreviewHeight:I

    if-eqz v1, :cond_0

    .line 236
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 237
    .local v0, "matrix":Landroid/graphics/Matrix;
    const/4 v1, 0x0

    iget v2, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mDisplayOrientation:I

    iget v3, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreviewWidth:I

    iget v4, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreviewHeight:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 241
    iget-object v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 242
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mInitialized:Z

    .line 244
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method


# virtual methods
.method public autoFocus()V
    .locals 3

    .prologue
    .line 135
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start autofocus. mListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mListener:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$Listener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mListener:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$Listener;->autoFocus()V

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mState:I

    .line 140
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 3

    .prologue
    .line 143
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel autofocus. mListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mListener:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$Listener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->resetTouchFocus()V

    .line 145
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mListener:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$Listener;->cancelAutoFocus()V

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mState:I

    .line 147
    return-void
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 6

    .prologue
    .line 183
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    .line 187
    .local v2, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusAreaSupported:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusDefault:Z

    if-nez v3, :cond_2

    .line 188
    const-string v3, "auto"

    iput-object v3, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusMode:Ljava/lang/String;

    .line 207
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 210
    const-string v3, "auto"

    iget-object v4, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 211
    const-string v3, "auto"

    iput-object v3, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusMode:Ljava/lang/String;

    .line 217
    :cond_1
    :goto_1
    const-string v3, "FocusManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFocusMode, mFocusMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusMode:Ljava/lang/String;

    return-object v3

    .line 193
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreferences:Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;

    const-string/jumbo v4, "pref_camera_focusmode_key"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusMode:Ljava/lang/String;

    .line 195
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusMode:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 197
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 198
    .local v1, "mode":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 199
    iput-object v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 196
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 213
    .end local v0    # "i":I
    .end local v1    # "mode":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public onAutoFocus(Z)V
    .locals 4
    .param p1, "focused"    # Z

    .prologue
    .line 324
    iget v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 325
    if-eqz p1, :cond_1

    .line 326
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mState:I

    .line 331
    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusDefault:Z

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 336
    :cond_0
    return-void

    .line 328
    :cond_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mState:I

    goto :goto_0
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->onPreviewStopped()V

    .line 179
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mState:I

    .line 151
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mState:I

    .line 156
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->resetTouchFocus()V

    .line 158
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusDefault:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 291
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->cancelAutoFocus()V

    .line 293
    :cond_3
    iget v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreviewWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreviewHeight:I

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusDefault:Z

    .line 298
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_4

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->initializeFocusAreas(II)V

    .line 302
    :cond_4
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_5

    .line 303
    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->initializeMeteringAreas(II)V

    .line 310
    :cond_5
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mListener:Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$Listener;

    invoke-interface {v0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager$Listener;->setFocusParameters()V

    .line 312
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->autoFocus()V

    goto :goto_0
.end method

.method public resetTouchFocus()V
    .locals 2

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mInitialized:Z

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    .line 167
    iget v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreviewWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreviewHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->initializeFocusAreas(II)V

    .line 170
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_2

    .line 171
    iget v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreviewWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreviewHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->initializeMeteringAreas(II)V

    .line 174
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusDefault:Z

    goto :goto_0
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .param p1, "displayOrientation"    # I

    .prologue
    .line 230
    iput p1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mDisplayOrientation:I

    .line 231
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->setMatrix()V

    .line 232
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 130
    invoke-static {p1}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->isFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mFocusAreaSupported:Z

    .line 131
    invoke-static {p1}, Lcom/lenovo/scg/minicamera/camera/utils/MiniCameraUtil;->isMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mMeteringAreaSupported:Z

    goto :goto_0
.end method

.method public setPreviewSize(II)V
    .locals 1
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I

    .prologue
    .line 222
    iget v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 223
    :cond_0
    iput p1, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreviewWidth:I

    .line 224
    iput p2, p0, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->mPreviewHeight:I

    .line 225
    invoke-direct {p0}, Lcom/lenovo/scg/minicamera/camera/configuration/MiniCameraFocusManager;->setMatrix()V

    .line 227
    :cond_1
    return-void
.end method
