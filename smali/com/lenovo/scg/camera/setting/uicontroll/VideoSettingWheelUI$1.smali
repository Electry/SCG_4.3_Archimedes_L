.class Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;
.super Landroid/os/Handler;
.source "VideoSettingWheelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMFSet:Landroid/view/animation/AnimationSet;

.field private mMfAlphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private mMfTranslateAnimation:Landroid/view/animation/TranslateAnimation;

.field private mShutterAlphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private mShutterSet:Landroid/view/animation/AnimationSet;

.field private mShutterTranslateAnimation:Landroid/view/animation/TranslateAnimation;

.field private mWBAlphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private mWBSet:Landroid/view/animation/AnimationSet;

.field private mWBTranslateAnimation:Landroid/view/animation/TranslateAnimation;

.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 181
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 209
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mWBAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 210
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mWBTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 211
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mWBSet:Landroid/view/animation/AnimationSet;

    return-void
.end method

.method private getMfAnim()Landroid/view/animation/AnimationSet;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 242
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mMfAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mMfAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mMfTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_1

    .line 247
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v6, 0x3e4ccccd    # 0.2f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mMfTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mMFSet:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_2

    .line 255
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mMFSet:Landroid/view/animation/AnimationSet;

    .line 256
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mMFSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mMfAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 257
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mMFSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mMfTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 258
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mMFSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 260
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mMFSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$ProAnimationListener;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelMF:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->access$100(Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$ProAnimationListener;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mMFSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private getShutterAnim()Landroid/view/animation/AnimationSet;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 272
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mShutterAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mShutterAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mShutterTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_1

    .line 277
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v6, 0x3e99999a    # 0.3f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mShutterTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mShutterSet:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_2

    .line 284
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mShutterSet:Landroid/view/animation/AnimationSet;

    .line 285
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mShutterSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mShutterAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 286
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mShutterSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mShutterTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 287
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mShutterSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mShutterSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private getWbAnim()Landroid/view/animation/AnimationSet;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 214
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mWBAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mWBAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mWBTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_1

    .line 218
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v6, 0x3dcccccd    # 0.1f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mWBTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mWBSet:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_2

    .line 226
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mWBSet:Landroid/view/animation/AnimationSet;

    .line 227
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mWBSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mWBAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 228
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mWBSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mWBTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 229
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mWBSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 230
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mWBSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$ProAnimationListener;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->this$0:Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;

    # getter for: Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->mBigWheelWB:Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;->access$000(Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;)Lcom/lenovo/scg/camera/setting/view/BigCircleSeekBarView;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$ProAnimationListener;-><init>(Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/uicontroll/VideoSettingWheelUI$1;->mWBSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    .line 207
    return-void
.end method
