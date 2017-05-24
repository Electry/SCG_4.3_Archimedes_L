.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$1;
.super Ljava/lang/Object;
.source "AboutConfigChecker.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/base/ClassInvoker$InvokeNonParamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->check()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker;->mResults:Ljava/util/ArrayList;

    new-instance v1, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AboutConfig."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/api/AboutConfigChecker$CheckResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method
