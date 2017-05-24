.class public Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;
.super Ljava/lang/Object;
.source "ProWheelShutterButtonAnim.java"


# instance fields
.field private debugTranslateAnimation:Landroid/view/animation/TranslateAnimation;

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mstepOnAnimationSet:Landroid/view/animation/AnimationSet;

.field private scaleAnimation:Landroid/view/animation/ScaleAnimation;

.field private translateStep1:Landroid/view/animation/TranslateAnimation;

.field private translateStep2:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->translateStep1:Landroid/view/animation/TranslateAnimation;

    .line 26
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->translateStep2:Landroid/view/animation/TranslateAnimation;

    .line 28
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 30
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 32
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->mstepOnAnimationSet:Landroid/view/animation/AnimationSet;

    .line 34
    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->debugTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    return-void
.end method


# virtual methods
.method public getShutterButtonAnim(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/TranslateAnimation;
    .locals 9
    .param p1, "mListener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 38
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->debugTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x41000000    # -0.5f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->debugTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->debugTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->debugTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 51
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->debugTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, p1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 53
    const-string v0, "getShutterButtonAnim"

    const-string v1, "getShutterButtonAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->debugTranslateAnimation:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method public getShutterButtonAnimStep1(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AnimationSet;
    .locals 14
    .param p1, "mListener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    const-wide/16 v12, 0xc8

    const v10, 0x3f19999a    # 0.6f

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 139
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->translateStep1:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_1

    .line 144
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x41000000    # -0.5f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->translateStep1:Landroid/view/animation/TranslateAnimation;

    .line 150
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->translateStep1:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 151
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->translateStep1:Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 152
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->translateStep1:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, p1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 154
    const-string v0, "getShutterButtonAnim"

    const-string v3, "getShutterButtonAnim"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    if-nez v0, :cond_2

    .line 158
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    move v4, v2

    move v5, v10

    move v6, v2

    move v7, v10

    move v8, v1

    move v10, v1

    move v11, v9

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v3, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 159
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 160
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->mstepOnAnimationSet:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_3

    .line 164
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->mstepOnAnimationSet:Landroid/view/animation/AnimationSet;

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->mstepOnAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->translateStep1:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->mstepOnAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 167
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->mstepOnAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->mstepOnAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method public getShutterButtonAnimStep2(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/TranslateAnimation;
    .locals 9
    .param p1, "mListener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 175
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->translateStep2:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x41000000    # -0.5f

    const v8, -0x41666666    # -0.3f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->translateStep2:Landroid/view/animation/TranslateAnimation;

    .line 181
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->translateStep2:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 182
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->translateStep2:Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 183
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->translateStep2:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;->translateStep2:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method public shutterButtonHideBigWheel(Landroid/view/View;FF)V
    .locals 8
    .param p1, "shutterButton"    # Landroid/view/View;
    .param p2, "translationYTo"    # F
    .param p3, "scaleXYTo"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 114
    const-string/jumbo v4, "translationY"

    new-array v5, v7, [F

    aput p2, v5, v6

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 115
    .local v3, "translateX":Landroid/animation/ObjectAnimator;
    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput p3, v5, v6

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 116
    .local v0, "scaleX":Landroid/animation/ObjectAnimator;
    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput p3, v5, v6

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 117
    .local v1, "scaleY":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 118
    .local v2, "set":Landroid/animation/AnimatorSet;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v6

    aput-object v0, v4, v7

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 120
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 121
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 122
    return-void
.end method

.method public shutterButtonHideBigWheel(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)V
    .locals 8
    .param p1, "shutterButton"    # Landroid/view/View;
    .param p2, "translationYTo"    # F
    .param p3, "scaleXYTo"    # F
    .param p4, "mAnimatorListenerAdapter"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    const-string/jumbo v4, "translationY"

    new-array v5, v7, [F

    aput p2, v5, v6

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 93
    .local v3, "translateX":Landroid/animation/ObjectAnimator;
    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput p3, v5, v6

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 94
    .local v0, "scaleX":Landroid/animation/ObjectAnimator;
    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput p3, v5, v6

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 95
    .local v1, "scaleY":Landroid/animation/ObjectAnimator;
    new-instance v4, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim$2;

    invoke-direct {v4, p0, p1, p4}, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim$2;-><init>(Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 106
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 107
    .local v2, "set":Landroid/animation/AnimatorSet;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v6

    aput-object v0, v4, v7

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 109
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 110
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 111
    return-void
.end method

.method public shutterButtonHideBigWheelStep2(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V
    .locals 4
    .param p1, "shutterButton"    # Landroid/view/View;
    .param p2, "translationYTo"    # F
    .param p3, "mAnimatorListenerAdapter"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    .line 126
    const-string/jumbo v1, "translationY"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 127
    .local v0, "translateX":Landroid/animation/ObjectAnimator;
    if-eqz p3, :cond_0

    .line 128
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 130
    :cond_0
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 131
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 132
    return-void
.end method

.method public shutterButtonShowBigWheel(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)V
    .locals 8
    .param p1, "shutterButton"    # Landroid/view/View;
    .param p2, "translationYTo"    # F
    .param p3, "scaleXYTo"    # F
    .param p4, "mAnimatorListenerAdapter"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 61
    const-string/jumbo v4, "translationY"

    new-array v5, v7, [F

    aput p2, v5, v6

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 62
    .local v3, "translateX":Landroid/animation/ObjectAnimator;
    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput p3, v5, v6

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 63
    .local v0, "scaleX":Landroid/animation/ObjectAnimator;
    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput p3, v5, v6

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 64
    .local v1, "scaleY":Landroid/animation/ObjectAnimator;
    new-instance v4, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim$1;

    invoke-direct {v4, p0, p1, p4}, Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim$1;-><init>(Lcom/lenovo/scg/camera/setting/amin/ProWheelShutterButtonAnim;Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 75
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 76
    .local v2, "set":Landroid/animation/AnimatorSet;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v6

    aput-object v0, v4, v7

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 78
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 79
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 80
    return-void
.end method

.method public startAnimatorShutterButtonStep2(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V
    .locals 4
    .param p1, "shutterButton"    # Landroid/view/View;
    .param p2, "translationYTo"    # F
    .param p3, "mAnimatorListenerAdapter"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    .line 83
    const-string/jumbo v1, "translationY"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 84
    .local v0, "translateX":Landroid/animation/ObjectAnimator;
    if-eqz p3, :cond_0

    .line 85
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 87
    :cond_0
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 88
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 89
    return-void
.end method
