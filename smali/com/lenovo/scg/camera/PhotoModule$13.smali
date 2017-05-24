.class Lcom/lenovo/scg/camera/PhotoModule$13;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PhotoModule;->showDetectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/PhotoModule;)V
    .locals 0

    .prologue
    .line 1820
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$13;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$13;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # getter for: Lcom/lenovo/scg/camera/PhotoModule;->mDetectDialog:Lcom/lenovo/scg/common/ui/DetectDialog;
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$4100(Lcom/lenovo/scg/camera/PhotoModule;)Lcom/lenovo/scg/common/ui/DetectDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/common/ui/DetectDialog;->dismiss()V

    .line 1824
    return-void
.end method
