.class public Lcom/lenovo/scg/gallery3d/puzzle/util/AnimaUtils;
.super Ljava/lang/Object;
.source "AnimaUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static entryAnimation(I)Landroid/view/animation/Animation;
    .locals 9
    .param p0, "duration"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 15
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 17
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 18
    return-object v0
.end method

.method public static exitAnimation(I)Landroid/view/animation/Animation;
    .locals 9
    .param p0, "duration"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 22
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 24
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 25
    return-object v0
.end method
