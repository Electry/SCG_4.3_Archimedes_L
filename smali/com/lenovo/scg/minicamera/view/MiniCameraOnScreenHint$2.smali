.class Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint$2;
.super Ljava/lang/Object;
.source "MiniCameraOnScreenHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint$2;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint$2;->this$0:Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;

    # invokes: Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->handleHide()V
    invoke-static {v0}, Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;->access$100(Lcom/lenovo/scg/minicamera/view/MiniCameraOnScreenHint;)V

    .line 177
    return-void
.end method
