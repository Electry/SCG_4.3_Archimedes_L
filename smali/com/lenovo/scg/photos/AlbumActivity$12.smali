.class Lcom/lenovo/scg/photos/AlbumActivity$12;
.super Ljava/lang/Thread;
.source "AlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/photos/AlbumActivity;->startWorker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/photos/AlbumActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/photos/AlbumActivity;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 857
    iput-object p1, p0, Lcom/lenovo/scg/photos/AlbumActivity$12;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/lenovo/scg/photos/AlbumActivity$12;->this$0:Lcom/lenovo/scg/photos/AlbumActivity;

    # invokes: Lcom/lenovo/scg/photos/AlbumActivity;->workerRun()V
    invoke-static {v0}, Lcom/lenovo/scg/photos/AlbumActivity;->access$1500(Lcom/lenovo/scg/photos/AlbumActivity;)V

    .line 862
    return-void
.end method
