.class Lcom/lenovo/scg/gallery3d/app/MoviePlayer$8;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->showResumeDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$8;->this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$8;->this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    # invokes: Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->startVideo()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->access$800(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)V

    .line 291
    return-void
.end method
