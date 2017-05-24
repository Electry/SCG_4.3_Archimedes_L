.class Lcom/lenovo/scg/camera/PhotoUI$7;
.super Ljava/lang/Object;
.source "PhotoUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PhotoUI;->initStatusbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoUI;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoUI;)V
    .locals 0

    .prologue
    .line 1748
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoUI$7;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoUI$7;->this$0:Lcom/lenovo/scg/camera/PhotoUI;

    # getter for: Lcom/lenovo/scg/camera/PhotoUI;->mPhotoController:Lcom/lenovo/scg/camera/PhotoController;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoUI;->access$500(Lcom/lenovo/scg/camera/PhotoUI;)Lcom/lenovo/scg/camera/PhotoController;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;

    invoke-interface {v0}, Lcom/lenovo/scg/camera/mode/controller/ModeBaseController;->switchToFrontCamera()V

    .line 1753
    return-void
.end method
