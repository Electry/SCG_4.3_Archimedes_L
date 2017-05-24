.class Lcom/lenovo/scg/photos/AlbumActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/photos/AlbumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/photos/AlbumActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/photos/AlbumActivity;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/lenovo/scg/photos/AlbumActivity$1;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$1;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # invokes: Lcom/lenovo/scg/photos/AlbumActivity;->onReceiveMediaBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/lenovo/scg/photos/AlbumActivity;->access$000(Lcom/lenovo/scg/photos/AlbumActivity;Landroid/content/Intent;)V

    .line 232
    return-void
.end method
