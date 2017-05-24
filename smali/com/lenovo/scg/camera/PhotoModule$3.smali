.class Lcom/lenovo/scg/camera/PhotoModule$3;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
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
    .line 565
    iput-object p1, p0, Lcom/lenovo/scg/camera/PhotoModule$3;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$3;->this$0:Lcom/lenovo/scg/camera/PhotoModule;

    # invokes: Lcom/lenovo/scg/camera/PhotoModule;->animateFlash()V
    invoke-static {v0}, Lcom/lenovo/scg/camera/PhotoModule;->access$300(Lcom/lenovo/scg/camera/PhotoModule;)V

    .line 570
    return-void
.end method
