.class Lcom/lenovo/scg/gallery3d/app/MoviePlayer$5;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->setOnSystemUiVisibilityChangeListener()V
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
    .line 236
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$5;->this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 240
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$5;->this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    # getter for: Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->access$700(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)I

    move-result v1

    xor-int v0, v1, p1

    .line 241
    .local v0, "diff":I
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$5;->this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    # setter for: Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mLastSystemUiVis:I
    invoke-static {v1, p1}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->access$702(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;I)I

    .line 242
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/app/MoviePlayer$5;->this$0:Lcom/lenovo/scg/gallery3d/app/MoviePlayer;

    # getter for: Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->mController:Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/app/MoviePlayer;->access$100(Lcom/lenovo/scg/gallery3d/app/MoviePlayer;)Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/app/MovieControllerOverlay;->show()V

    .line 245
    :cond_0
    return-void
.end method
