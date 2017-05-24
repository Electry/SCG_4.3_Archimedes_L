.class Lcom/lenovo/scg/gallery3d/app/PhotoPage$12;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/DetailsHelper$CloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/app/PhotoPage;->showDetails()V
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
    .line 2061
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/app/PhotoPage$12;->this$0:Lcom/lenovo/scg/gallery3d/app/PhotoPage;

    # invokes: Lcom/lenovo/scg/gallery3d/app/PhotoPage;->hideDetails()V
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/app/PhotoPage;->access$4100(Lcom/lenovo/scg/gallery3d/app/PhotoPage;)V

    .line 2066
    return-void
.end method
