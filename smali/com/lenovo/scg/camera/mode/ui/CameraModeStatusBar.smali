.class public Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;
.super Landroid/widget/RelativeLayout;
.source "CameraModeStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar$1;
    }
.end annotation


# instance fields
.field private mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

.field private mContext:Landroid/content/Context;

.field private mDegree:I

.field private mFlashCurrentStatus:Ljava/lang/String;

.field private mFlashSuper:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mFlashTorch:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

.field private mModeIcon:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mNameWidth:F

.field private mOIS:Lcom/lenovo/scg/camera/ui/RotateImageView;

.field private mRlModeFlash:Landroid/widget/RelativeLayout;

.field private mRlModeFlashSuper:Landroid/widget/RelativeLayout;

.field private mRlOIS:Landroid/widget/RelativeLayout;

.field private mTvModeName:Landroid/widget/TextView;

.field private mbShowFlash:Z

.field private mbShowOIS:Z

.field private mbShowSuper:Z

.field private mbSuperOn:Z

.field private mbTorchOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mModeIcon:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 30
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashTorch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 32
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbTorchOn:Z

    .line 34
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashSuper:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 36
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbSuperOn:Z

    .line 38
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mOIS:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 40
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlModeFlash:Landroid/widget/RelativeLayout;

    .line 42
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlModeFlashSuper:Landroid/widget/RelativeLayout;

    .line 44
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlOIS:Landroid/widget/RelativeLayout;

    .line 46
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mTvModeName:Landroid/widget/TextView;

    .line 50
    iput v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mDegree:I

    .line 67
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mContext:Landroid/content/Context;

    .line 69
    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashCurrentStatus:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method private closeFlash()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mContext:Landroid/content/Context;

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashCurrentStatus:Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashCurrentStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlashByMode(Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method private getTextWidth(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 198
    .local v0, "paint":Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09035b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 199
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mNameWidth:F

    .line 200
    return-void
.end method

.method private setFlash()V
    .locals 7

    .prologue
    const v6, 0x7f0200d3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 328
    sget-object v2, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar$1;->$SwitchMap$com$lenovo$scg$camera$mode$ModeFactory$MODE:[I

    iget-object v3, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 330
    :pswitch_0
    invoke-direct {p0, v5, v4, v4}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->updateIconLayout(ZZZ)V

    .line 331
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getDefFlashValue()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "flashStatus":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->isTorch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbTorchOn:Z

    .line 334
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashTorch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 335
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashTorch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mDegree:I

    invoke-virtual {v2, v3, v5}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    goto :goto_0

    .line 340
    .end local v0    # "flashStatus":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0, v4, v5, v5}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->updateIconLayout(ZZZ)V

    .line 341
    invoke-static {}, Lcom/lenovo/scg/camera/mode/ModeManager;->getInstance()Lcom/lenovo/scg/camera/mode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeManager;->getCurrentModeInstance()Lcom/lenovo/scg/camera/mode/CaptureMode;

    move-result-object v1

    check-cast v1, Lcom/lenovo/scg/camera/mode/NightMode;

    .line 342
    .local v1, "nm":Lcom/lenovo/scg/camera/mode/NightMode;
    invoke-virtual {v1}, Lcom/lenovo/scg/camera/mode/NightMode;->needFlash()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->showModeFlash(Z)V

    .line 344
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v2}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->getDefFlashValue()Ljava/lang/String;

    move-result-object v0

    .line 345
    .restart local v0    # "flashStatus":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->isTorch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    iput-boolean v5, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbTorchOn:Z

    .line 347
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashTorch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v2, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 348
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashTorch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mDegree:I

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    goto :goto_0

    .line 350
    :cond_1
    iput-boolean v4, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbTorchOn:Z

    .line 351
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashTorch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v3, 0x7f0200d2

    invoke-virtual {v2, v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 352
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashTorch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mDegree:I

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private torchFlash()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mContext:Landroid/content/Context;

    const v1, 0x7f0f000e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashCurrentStatus:Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/setting/CameraSettingController;->getSCGCameraParameters()Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashCurrentStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/setting/parameters/SCGCameraParameters;->setFlashByMode(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method private updateIconLayout(ZZZ)V
    .locals 10
    .param p1, "bFlash"    # Z
    .param p2, "bFlashSuper"    # Z
    .param p3, "bOSI"    # Z

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 266
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowFlash:Z

    .line 267
    iput-boolean v7, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowSuper:Z

    .line 268
    iput-boolean p3, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowOIS:Z

    .line 271
    invoke-static {}, Lcom/lenovo/scg/camera/CameraConfig;->isRowVersion()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 272
    iput-boolean v7, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowOIS:Z

    .line 276
    :cond_0
    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlModeFlash:Landroid/widget/RelativeLayout;

    iget-boolean v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowFlash:Z

    if-eqz v6, :cond_2

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 277
    iget-object v9, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlModeFlashSuper:Landroid/widget/RelativeLayout;

    iget-boolean v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowSuper:Z

    if-eqz v6, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 278
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlOIS:Landroid/widget/RelativeLayout;

    iget-boolean v9, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowOIS:Z

    if-eqz v9, :cond_4

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 280
    iget-boolean v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowFlash:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowSuper:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowOIS:Z

    if-nez v6, :cond_5

    .line 324
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v6, v8

    .line 276
    goto :goto_0

    :cond_3
    move v6, v8

    .line 277
    goto :goto_1

    :cond_4
    move v7, v8

    .line 278
    goto :goto_2

    .line 283
    :cond_5
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090355

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 284
    .local v5, "tm":I
    move v0, v5

    .line 285
    .local v0, "flash_margin":I
    move v4, v5

    .line 286
    .local v4, "super_margin":I
    move v2, v5

    .line 287
    .local v2, "osi_margin":I
    iget v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mNameWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    mul-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mTvModeName:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLineHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v1, v6

    .line 289
    .local v1, "margin":I
    iget-boolean v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowFlash:Z

    if-eqz v6, :cond_a

    .line 290
    iget v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mDegree:I

    rem-int/lit16 v6, v6, 0xb4

    if-nez v6, :cond_9

    .line 291
    mul-int/lit8 v0, v5, 0x2

    .line 309
    :cond_6
    :goto_4
    iget-boolean v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowFlash:Z

    if-eqz v6, :cond_7

    .line 310
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlModeFlash:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 311
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 312
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlModeFlash:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    iget-boolean v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowSuper:Z

    if-eqz v6, :cond_8

    .line 315
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlModeFlashSuper:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 316
    .restart local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 317
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlModeFlashSuper:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_8
    iget-boolean v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowOIS:Z

    if-eqz v6, :cond_1

    .line 320
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlOIS:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 321
    .restart local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 322
    iget-object v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlOIS:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 293
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    move v0, v1

    goto :goto_4

    .line 295
    :cond_a
    iget-boolean v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowSuper:Z

    if-eqz v6, :cond_c

    .line 296
    iget v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mDegree:I

    rem-int/lit16 v6, v6, 0xb4

    if-nez v6, :cond_b

    .line 297
    mul-int/lit8 v4, v5, 0x2

    goto :goto_4

    .line 299
    :cond_b
    move v4, v1

    goto :goto_4

    .line 301
    :cond_c
    iget-boolean v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowOIS:Z

    if-eqz v6, :cond_6

    .line 302
    iget v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mDegree:I

    rem-int/lit16 v6, v6, 0xb4

    if-nez v6, :cond_d

    .line 303
    mul-int/lit8 v2, v5, 0x2

    goto :goto_4

    .line 305
    :cond_d
    move v2, v1

    goto :goto_4
.end method

.method private updateModeNameLayout()V
    .locals 7

    .prologue
    const/4 v4, -0x2

    const/high16 v6, 0x40000000    # 2.0f

    .line 251
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 252
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090359

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 253
    .local v3, "tm":F
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09035a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 254
    .local v2, "rm":F
    iget-object v4, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mTvModeName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    int-to-float v0, v4

    .line 256
    .local v0, "lh":F
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 257
    const/4 v4, 0x3

    const v5, 0x7f1001ba

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 258
    iget v4, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mNameWidth:F

    div-float/2addr v4, v6

    add-float/2addr v4, v3

    div-float v5, v0, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 259
    div-float v4, v0, v6

    add-float/2addr v4, v2

    iget v5, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mNameWidth:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 261
    const v4, 0x7f1001bb

    invoke-virtual {p0, v4}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 137
    invoke-static {}, Lcom/lenovo/scg/common/ui/TinyTips;->destroy()V

    .line 138
    return-void
.end method

.method public getCurrentDegree()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mDegree:I

    return v0
.end method

.method public getDrawableCurID()I
    .locals 3

    .prologue
    .line 397
    const/4 v0, -0x1

    .line 399
    .local v0, "resId":I
    sget-object v1, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar$1;->$SwitchMap$com$lenovo$scg$camera$mode$ModeFactory$MODE:[I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 461
    :goto_0
    :pswitch_0
    return v0

    .line 410
    :pswitch_1
    const v0, 0x7f02021f

    .line 411
    goto :goto_0

    .line 414
    :pswitch_2
    const v0, 0x7f020221

    .line 415
    goto :goto_0

    .line 418
    :pswitch_3
    const v0, 0x7f02022b

    .line 419
    goto :goto_0

    .line 422
    :pswitch_4
    const v0, 0x7f020228

    .line 423
    goto :goto_0

    .line 426
    :pswitch_5
    const v0, 0x7f020227

    .line 427
    goto :goto_0

    .line 430
    :pswitch_6
    const v0, 0x7f020226

    .line 431
    goto :goto_0

    .line 434
    :pswitch_7
    const v0, 0x7f020220

    .line 435
    goto :goto_0

    .line 438
    :pswitch_8
    const v0, 0x7f02021e

    .line 439
    goto :goto_0

    .line 442
    :pswitch_9
    const v0, 0x7f02022a

    .line 443
    goto :goto_0

    .line 446
    :pswitch_a
    const v0, 0x7f02022c

    .line 447
    goto :goto_0

    .line 450
    :pswitch_b
    const v0, 0x7f020229

    .line 451
    goto :goto_0

    .line 454
    :pswitch_c
    const v0, 0x7f020219

    .line 455
    goto :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public getFlashStatusByModeBar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashCurrentStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getModeIconPosition()Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 524
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 526
    .local v1, "rc":Landroid/graphics/Rect;
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 527
    .local v0, "pos":[I
    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mModeIcon:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 529
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 533
    instance-of v3, v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    if-eqz v3, :cond_0

    .line 534
    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getDrawablePos(Landroid/graphics/Rect;)V

    .line 535
    iget v3, v1, Landroid/graphics/Rect;->left:I

    aget v4, v0, v5

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 536
    iget v3, v1, Landroid/graphics/Rect;->top:I

    aget v4, v0, v6

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 537
    iget v3, v1, Landroid/graphics/Rect;->right:I

    aget v4, v0, v5

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 538
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    aget v4, v0, v6

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 547
    :goto_0
    return-object v1

    .line 540
    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    aget v3, v0, v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 541
    aget v3, v0, v6

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 542
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 543
    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 467
    const/4 v0, 0x0

    .line 469
    .local v0, "title":Ljava/lang/String;
    sget-object v1, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar$1;->$SwitchMap$com$lenovo$scg$camera$mode$ModeFactory$MODE:[I

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    invoke-virtual {v2}, Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 516
    :goto_0
    :pswitch_0
    return-object v0

    .line 471
    :pswitch_1
    const/4 v0, 0x0

    .line 472
    goto :goto_0

    .line 474
    :pswitch_2
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    goto :goto_0

    .line 477
    :pswitch_3
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 478
    goto :goto_0

    .line 480
    :pswitch_4
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 481
    goto :goto_0

    .line 483
    :pswitch_5
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 484
    goto :goto_0

    .line 486
    :pswitch_6
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    goto :goto_0

    .line 489
    :pswitch_7
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 490
    goto :goto_0

    .line 492
    :pswitch_8
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 493
    goto :goto_0

    .line 495
    :pswitch_9
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 496
    goto/16 :goto_0

    .line 498
    :pswitch_a
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 499
    goto/16 :goto_0

    .line 501
    :pswitch_b
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 502
    goto/16 :goto_0

    .line 504
    :pswitch_c
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 505
    goto/16 :goto_0

    .line 507
    :pswitch_d
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 508
    goto/16 :goto_0

    .line 510
    :pswitch_e
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    goto/16 :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getModeTextPosition()[I
    .locals 3

    .prologue
    .line 552
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 553
    .local v0, "pos":[I
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mTvModeName:Landroid/widget/TextView;

    .line 554
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 555
    return-object v0
.end method

.method public getModeTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mTvModeName:Landroid/widget/TextView;

    return-object v0
.end method

.method public isTorch(Ljava/lang/String;)Z
    .locals 1
    .param p1, "oldFlashStatus"    # Ljava/lang/String;

    .prologue
    .line 375
    const-string/jumbo v0, "torch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbTorchOn:Z

    if-eqz v0, :cond_2

    .line 107
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->torchFlash()V

    .line 111
    :goto_1
    return-void

    .line 80
    :pswitch_1
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbTorchOn:Z

    if-eqz v0, :cond_0

    .line 81
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbTorchOn:Z

    .line 82
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashTorch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 84
    :cond_0
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbTorchOn:Z

    .line 85
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashTorch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 90
    :pswitch_2
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbSuperOn:Z

    if-eqz v0, :cond_1

    .line 91
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbSuperOn:Z

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashSuper:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 94
    :cond_1
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbSuperOn:Z

    .line 95
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashSuper:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f0200d5

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 100
    :pswitch_3
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mContext:Landroid/content/Context;

    const v3, 0x7f0f01db

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mDegree:I

    const/16 v4, 0xbb8

    invoke-static {v1, v0, v2, v3, v4}, Lcom/lenovo/scg/common/ui/TinyTips;->show(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;II)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->closeFlash()V

    goto :goto_1

    .line 78
    :pswitch_data_0
    .packed-switch 0x7f1001be
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 118
    const v0, 0x7f1001ba

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mModeIcon:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 119
    const v0, 0x7f1001bc

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mTvModeName:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f1001bd

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlModeFlash:Landroid/widget/RelativeLayout;

    .line 123
    const v0, 0x7f1001bf

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlModeFlashSuper:Landroid/widget/RelativeLayout;

    .line 124
    const v0, 0x7f1001c1

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlOIS:Landroid/widget/RelativeLayout;

    .line 126
    const v0, 0x7f1001be

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashTorch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 127
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashTorch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v0, 0x7f1001c0

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashSuper:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 130
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashSuper:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v0, 0x7f1001c2

    invoke-virtual {p0, v0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mOIS:Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 133
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mOIS:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method

.method public setCameraSettingController(Lcom/lenovo/scg/camera/setting/CameraSettingController;)V
    .locals 0
    .param p1, "controller"    # Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mCameraSettingController:Lcom/lenovo/scg/camera/setting/CameraSettingController;

    .line 219
    return-void
.end method

.method public setMode(Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;)V
    .locals 0
    .param p1, "mode"    # Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mMode:Lcom/lenovo/scg/camera/mode/ModeFactory$MODE;

    .line 191
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->setModeName()V

    .line 192
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->setModeIcon()V

    .line 193
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->setFlash()V

    .line 194
    return-void
.end method

.method public setModeIcon()V
    .locals 3

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getDrawableCurID()I

    move-result v0

    .line 383
    .local v0, "resId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mModeIcon:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mModeIcon:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setVisibility(I)V

    .line 389
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mModeIcon:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setModeName()V
    .locals 3

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getModeName()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mTvModeName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mTvModeName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mTvModeName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getModeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->getTextWidth(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 8
    .param p1, "orientation"    # I

    .prologue
    const/4 v6, 0x1

    .line 141
    iput p1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mDegree:I

    .line 144
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlModeFlash:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 145
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlModeFlash:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 146
    .local v1, "nCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 147
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlModeFlash:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 148
    .local v3, "rChild":Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v3, p1, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    goto :goto_1

    .line 156
    .end local v0    # "i":I
    .end local v1    # "nCount":I
    .end local v3    # "rChild":Lcom/lenovo/scg/camera/ui/RotateImageView;
    :cond_1
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlModeFlashSuper:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 157
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlModeFlashSuper:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 158
    .restart local v1    # "nCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v1, :cond_3

    .line 159
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlModeFlashSuper:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 160
    .restart local v3    # "rChild":Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-virtual {v3}, Lcom/lenovo/scg/camera/ui/RotateImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    .line 158
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 163
    :cond_2
    invoke-virtual {v3, p1, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    goto :goto_3

    .line 167
    .end local v0    # "i":I
    .end local v1    # "nCount":I
    .end local v3    # "rChild":Lcom/lenovo/scg/camera/ui/RotateImageView;
    :cond_3
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mRlOIS:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 168
    iget-object v5, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mOIS:Lcom/lenovo/scg/camera/ui/RotateImageView;

    invoke-virtual {v5, p1, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 172
    :cond_4
    const v5, 0x7f1001ba

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/scg/camera/ui/RotateImageView;

    .line 173
    .local v2, "r":Lcom/lenovo/scg/camera/ui/RotateImageView;
    invoke-virtual {v2, p1, v6}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 176
    const v5, 0x7f1001bb

    invoke-virtual {p0, v5}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 177
    .local v4, "textview":Landroid/widget/LinearLayout;
    if-eqz p1, :cond_5

    const/16 v5, 0xb4

    if-ne p1, v5, :cond_6

    .line 178
    :cond_5
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    :goto_4
    iget-boolean v5, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowFlash:Z

    iget-boolean v6, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowSuper:Z

    iget-boolean v7, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowOIS:Z

    invoke-direct {p0, v5, v6, v7}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->updateIconLayout(ZZZ)V

    .line 186
    return-void

    .line 180
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->updateModeNameLayout()V

    goto :goto_4
.end method

.method public showModeFlash(Z)V
    .locals 2
    .param p1, "bShow"    # Z

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowSuper:Z

    iget-boolean v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbShowOIS:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->updateIconLayout(ZZZ)V

    .line 248
    return-void
.end method

.method public updateNightFlash(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "oldFlashStatus"    # Ljava/lang/String;
    .param p2, "bFlash"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    if-nez p2, :cond_0

    .line 228
    invoke-virtual {p0, v2}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->showModeFlash(Z)V

    .line 229
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->closeFlash()V

    .line 244
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->showModeFlash(Z)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->isTorch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iput-boolean v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbTorchOn:Z

    .line 234
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashTorch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 235
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashTorch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mDegree:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 236
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->torchFlash()V

    goto :goto_0

    .line 238
    :cond_1
    iput-boolean v2, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mbTorchOn:Z

    .line 239
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashTorch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setImageResource(I)V

    .line 240
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mFlashTorch:Lcom/lenovo/scg/camera/ui/RotateImageView;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->mDegree:I

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/scg/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 241
    invoke-direct {p0}, Lcom/lenovo/scg/camera/mode/ui/CameraModeStatusBar;->closeFlash()V

    goto :goto_0
.end method
