.class public Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SpecialEffectScrollView.java"


# instance fields
.field private mOnTouchViewListener:Lcom/lenovo/scg/gallery3d/specialEffects/OnTouchViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->mOnTouchViewListener:Lcom/lenovo/scg/gallery3d/specialEffects/OnTouchViewListener;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->mOnTouchViewListener:Lcom/lenovo/scg/gallery3d/specialEffects/OnTouchViewListener;

    invoke-interface {v0, p1}, Lcom/lenovo/scg/gallery3d/specialEffects/OnTouchViewListener;->onTouch(Landroid/view/MotionEvent;)V

    .line 25
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnTouchViewListener(Lcom/lenovo/scg/gallery3d/specialEffects/OnTouchViewListener;)V
    .locals 0
    .param p1, "onTouchViewListener"    # Lcom/lenovo/scg/gallery3d/specialEffects/OnTouchViewListener;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/specialEffects/SpecialEffectScrollView;->mOnTouchViewListener:Lcom/lenovo/scg/gallery3d/specialEffects/OnTouchViewListener;

    .line 18
    return-void
.end method
