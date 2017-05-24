.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$2;
.super Ljava/lang/Object;
.source "SusUpdateInspector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->finishCheckingUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$2;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->onFinish()V

    .line 130
    return-void
.end method
