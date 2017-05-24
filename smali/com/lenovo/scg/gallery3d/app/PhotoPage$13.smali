.class Lcom/lenovo/scg/gallery3d/app/PhotoPage$13;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V
    .locals 0

    .prologue
    .line 2598
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$13;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2601
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$13;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->updateAuidoPlayIcon()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$4300(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    .line 2602
    return-void
.end method
