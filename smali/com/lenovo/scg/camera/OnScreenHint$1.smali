.class Lcom/lenovo/scg/camera/OnScreenHint$1;
.super Ljava/lang/Object;
.source "OnScreenHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/OnScreenHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/OnScreenHint;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/OnScreenHint;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/lenovo/scg/camera/OnScreenHint$1;->this$0:Lcom/lenovo/scg/camera/OnScreenHint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lenovo/scg/camera/OnScreenHint$1;->this$0:Lcom/lenovo/scg/camera/OnScreenHint;

    # invokes: Lcom/lenovo/scg/camera/OnScreenHint;->handleShow()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/OnScreenHint;->access$000(Lcom/lenovo/scg/camera/OnScreenHint;)V

    .line 188
    return-void
.end method