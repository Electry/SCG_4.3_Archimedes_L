.class Lcom/lenovo/scg/camera/mode/RemoveMode$8;
.super Ljava/lang/Object;
.source "RemoveMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/RemoveMode;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/RemoveMode;)V
    .locals 0

    .prologue
    .line 939
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$8;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/RemoveMode$8;->this$0:Lcom/lenovo/scg/camera/mode/RemoveMode;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/mode/RemoveMode;->reset()V

    .line 943
    return-void
.end method
