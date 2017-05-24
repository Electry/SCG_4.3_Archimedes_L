.class Lcom/lenovo/scg/camera/PhotoModule$LowpowerPositiveOnClickListener;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LowpowerPositiveOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 8942
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$LowpowerPositiveOnClickListener;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 8946
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$LowpowerPositiveOnClickListener;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mLowpowerRotateDialog:Lcom/lenovo/scg/camera/LowpowerRotateDialog;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$8000(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/LowpowerRotateDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8947
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$LowpowerPositiveOnClickListener;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mLowpowerRotateDialog:Lcom/lenovo/scg/camera/LowpowerRotateDialog;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$8000(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/camera/LowpowerRotateDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/LowpowerRotateDialog;->dismissDialog()Z

    .line 8948
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$LowpowerPositiveOnClickListener;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule;->mCameraActivity:Lcom/lenovo/scg/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/CameraActivity;->finish()V

    .line 8950
    :cond_0
    return-void
.end method
