.class Lcom/lenovo/scg/camera/PhotoModule$16;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/PhotoModule;->addIdleHandler()V
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
    .line 2239
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$16;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 2243
    invoke-static {}, Lcom/lenovo/scg/camera/Storage;->ensureOSXCompatible()V

    .line 2244
    const/4 v0, 0x0

    return v0
.end method
