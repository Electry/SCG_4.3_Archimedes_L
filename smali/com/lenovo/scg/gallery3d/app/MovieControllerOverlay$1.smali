.class Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay$1;
.super Ljava/lang/Object;
.source "MovieControllerOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay$1;->this$0:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    # invokes: Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->startHiding()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->access$000(Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;)V

    .line 51
    return-void
.end method
