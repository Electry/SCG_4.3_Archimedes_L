.class Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$23;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->initUpDownAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .prologue
    .line 3172
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$23;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3177
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$23;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLockClick:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1702(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Z)Z

    .line 3178
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3183
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3188
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity$23;->this$0:Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->mLockClick:Z
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;->access$1702(Lcom/lenovo/scg/gallery3d/app/AbstractGalleryActivity;Z)Z

    .line 3189
    return-void
.end method
