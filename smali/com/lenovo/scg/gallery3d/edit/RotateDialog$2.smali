.class Lcom/lenovo/scg/gallery3d/edit/RotateDialog$2;
.super Ljava/lang/Object;
.source "RotateDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/edit/RotateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/edit/RotateDialog;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 225
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 226
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 227
    .local v2, "y":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 228
    .local v0, "rotateDialogRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->access$000(Lcom/lenovo/scg/gallery3d/edit/RotateDialog;)Lcom/lenovo/scg/camera/ui/RotateLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->access$000(Lcom/lenovo/scg/gallery3d/edit/RotateDialog;)Lcom/lenovo/scg/camera/ui/RotateLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 231
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 232
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->access$100(Lcom/lenovo/scg/gallery3d/edit/RotateDialog;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 233
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    # getter for: Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->access$100(Lcom/lenovo/scg/gallery3d/edit/RotateDialog;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 234
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    const/4 v4, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v3, v4}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->access$102(Lcom/lenovo/scg/gallery3d/edit/RotateDialog;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 239
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 236
    :cond_2
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/RotateDialog$2;->this$0:Lcom/lenovo/scg/gallery3d/edit/RotateDialog;

    invoke-virtual {v3}, Lcom/lenovo/scg/gallery3d/edit/RotateDialog;->dismissDialog()Z

    goto :goto_0
.end method
