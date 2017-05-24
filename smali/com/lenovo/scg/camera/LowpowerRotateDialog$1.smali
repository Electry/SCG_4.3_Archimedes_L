.class Lcom/lenovo/scg/camera/LowpowerRotateDialog$1;
.super Ljava/lang/Object;
.source "LowpowerRotateDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/LowpowerRotateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/LowpowerRotateDialog;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/LowpowerRotateDialog;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog$1;->this$0:Lcom/lenovo/scg/camera/LowpowerRotateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 117
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 118
    .local v2, "y":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 119
    .local v0, "rotateDialogRect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog$1;->this$0:Lcom/lenovo/scg/camera/LowpowerRotateDialog;

    # getter for: Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;
    invoke-static {v3}, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->access$000(Lcom/lenovo/scg/camera/LowpowerRotateDialog;)Lcom/lenovo/scg/camera/ui/RotateLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/lenovo/scg/camera/LowpowerRotateDialog$1;->this$0:Lcom/lenovo/scg/camera/LowpowerRotateDialog;

    # getter for: Lcom/lenovo/scg/camera/LowpowerRotateDialog;->mRotateDialog:Lcom/lenovo/scg/camera/ui/RotateLayout;
    invoke-static {v3}, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->access$000(Lcom/lenovo/scg/camera/LowpowerRotateDialog;)Lcom/lenovo/scg/camera/ui/RotateLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 122
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    :cond_1
    const/4 v3, 0x0

    return v3
.end method
