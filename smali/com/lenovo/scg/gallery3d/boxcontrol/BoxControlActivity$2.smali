.class Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "BoxControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->setData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity$2;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;

    # invokes: Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->onReceiveMediaBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;->access$800(Lcom/lenovo/scg/gallery3d/boxcontrol/BoxControlActivity;Landroid/content/Intent;)V

    .line 221
    return-void
.end method
