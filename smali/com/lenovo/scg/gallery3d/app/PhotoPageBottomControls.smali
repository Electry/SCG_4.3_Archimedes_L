.class public Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;
.super Ljava/lang/Object;
.source "PhotoPageBottomControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls$Delegate;
    }
.end annotation


# static fields
.field private static final CONTAINER_ANIM_DURATION_MS:I = 0xc8

.field private static final CONTROL_ANIM_DURATION_MS:I = 0x96


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private mContainerAnimIn:Landroid/view/animation/Animation;

.field private mContainerAnimOut:Landroid/view/animation/Animation;

.field private mContainerVisible:Z

.field private mControlsVisible:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDelegate:Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls$Delegate;

.field private mParentLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls$Delegate;Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 10
    .param p1, "delegate"    # Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls$Delegate;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layout"    # Landroid/widget/RelativeLayout;

    .prologue
    const-wide/16 v8, 0xc8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainerVisible:Z

    .line 54
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    .line 56
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v4, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainerAnimIn:Landroid/view/animation/Animation;

    .line 58
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v6, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainerAnimOut:Landroid/view/animation/Animation;

    .line 71
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mDelegate:Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls$Delegate;

    .line 72
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    .line 74
    const-string v3, "layout_inflater"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 75
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040126

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    .line 76
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 79
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 84
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainerAnimIn:Landroid/view/animation/Animation;

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 85
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainerAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 87
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mDelegate:Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls$Delegate;

    invoke-interface {v3}, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls$Delegate;->refreshBottomControlsWhenReady()V

    .line 88
    return-void
.end method

.method private static getControlAnimForVisibility(Z)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "visible"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 65
    if-eqz p0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 66
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_0
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 67
    return-object v0

    .line 65
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 92
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainerAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 93
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainerAnimOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 95
    return-void
.end method

.method private show()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainerAnimIn:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainerAnimIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 101
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 102
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 136
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 137
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainerVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mDelegate:Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls$Delegate;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls$Delegate;->onBottomControlClicked(I)V

    .line 144
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 105
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mDelegate:Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls$Delegate;

    invoke-interface {v6}, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls$Delegate;->canDisplayBottomControls()Z

    move-result v5

    .line 106
    .local v5, "visible":Z
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainerVisible:Z

    if-eq v5, v6, :cond_1

    const/4 v0, 0x1

    .line 107
    .local v0, "containerVisibilityChanged":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 108
    if-eqz v5, :cond_2

    .line 109
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->show()V

    .line 113
    :goto_1
    iput-boolean v5, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainerVisible:Z

    .line 115
    :cond_0
    iget-boolean v6, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainerVisible:Z

    if-nez v6, :cond_3

    .line 132
    :goto_2
    return-void

    .end local v0    # "containerVisibilityChanged":Z
    :cond_1
    move v0, v7

    .line 106
    goto :goto_0

    .line 111
    .restart local v0    # "containerVisibilityChanged":Z
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->hide()V

    goto :goto_1

    .line 118
    :cond_3
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 119
    .local v1, "control":Landroid/view/View;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 120
    .local v4, "prevVisibility":Ljava/lang/Boolean;
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mDelegate:Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls$Delegate;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v8

    invoke-interface {v6, v8}, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls$Delegate;->canDisplayBottomControl(I)Z

    move-result v2

    .line 121
    .local v2, "curVisibility":Z
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eq v6, v2, :cond_4

    .line 122
    if-nez v0, :cond_5

    .line 123
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 124
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->getControlAnimForVisibility(Z)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    :cond_5
    if-eqz v2, :cond_6

    move v6, v7

    :goto_4
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mControlsVisible:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 126
    :cond_6
    const/4 v6, 0x4

    goto :goto_4

    .line 131
    .end local v1    # "control":Landroid/view/View;
    .end local v2    # "curVisibility":Z
    .end local v4    # "prevVisibility":Ljava/lang/Boolean;
    :cond_7
    iget-object v6, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPageBottomControls;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2
.end method
