.class Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$3;
.super Ljava/lang/Object;
.source "CloudActionBarLoadAnim.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->stopAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 128
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mParentView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;)Landroid/view/ViewGroup;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 129
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mParentView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 130
    .local v2, "nCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 131
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim$3;->this$0:Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;

    # getter for: Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->mParentView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;->access$300(Lcom/lenovo/scg/gallery3d/cloudalbum/anim/CloudActionBarLoadAnim;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 130
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 124
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 119
    return-void
.end method
