.class Lcom/lenovo/scg/camera/ActivityBase$3;
.super Landroid/content/BroadcastReceiver;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/ActivityBase;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/lenovo/scg/camera/ActivityBase$3;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lenovo/scg/camera/ActivityBase$3;->this$0:Lcom/lenovo/scg/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/ActivityBase;->finish()V

    .line 172
    return-void
.end method
