.class Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog$1;
.super Ljava/lang/Object;
.source "RotateAboutDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog$1;->this$0:Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 99
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 100
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 101
    .local v2, "y":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 102
    .local v0, "rotateDialogRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog$1;->this$0:Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

    # getter for: Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->access$000(Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;)Lcom/lenovo/scg/camera/ui/RotateLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog$1;->this$0:Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

    # getter for: Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->access$000(Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;)Lcom/lenovo/scg/camera/ui/RotateLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 105
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 106
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog$1;->this$0:Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

    # getter for: Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->access$100(Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 107
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog$1;->this$0:Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

    # getter for: Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->access$100(Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 108
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog$1;->this$0:Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

    const/4 v4, 0x0

    # setter for: Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v3, v4}, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->access$102(Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 113
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 110
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog$1;->this$0:Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;

    invoke-virtual {v3}, Lcom/lenovo/scg/camera/setting/view/RotateAboutDialog;->dismissDialog()Z

    goto :goto_0
.end method
