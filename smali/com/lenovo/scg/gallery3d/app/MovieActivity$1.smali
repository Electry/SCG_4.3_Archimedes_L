.class Lcom/lenovo/scg/gallery3d/app/MovieActivity$1;
.super Lcom/lenovo/scg/gallery3d/app/MoviePlayer;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/MovieActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/MovieActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/MovieActivity;Landroid/view/View;Lcom/lenovo/scg/gallery3d/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 6
    .param p2, "x0"    # Landroid/view/View;
    .param p3, "x1"    # Lcom/lenovo/scg/gallery3d/app/MovieActivity;
    .param p4, "x2"    # Landroid/net/Uri;
    .param p5, "x3"    # Landroid/os/Bundle;
    .param p6, "x4"    # Z

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/app/MovieActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;-><init>(Landroid/view/View;Lcom/lenovo/scg/gallery3d/app/MovieActivity;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/app/MovieActivity;

    # getter for: Lcom/lenovo/scg/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->access$000(Lcom/lenovo/scg/gallery3d/app/MovieActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieActivity$1;->this$0:Lcom/lenovo/scg/gallery3d/app/MovieActivity;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/app/MovieActivity;->finish()V

    .line 102
    :cond_0
    return-void
.end method
