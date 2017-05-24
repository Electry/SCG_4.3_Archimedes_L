.class public Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;
.super Ljava/lang/Object;
.source "FreedomImageLocationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FreedomTemplate"
.end annotation


# instance fields
.field private templateLocList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;)V
    .locals 1

    .prologue
    .line 401
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;->templateLocList:Ljava/util/ArrayList;

    .line 402
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p2, "locList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;->this$0:Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;->templateLocList:Ljava/util/ArrayList;

    .line 405
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;->templateLocList:Ljava/util/ArrayList;

    .line 406
    return-void
.end method


# virtual methods
.method public clearTemplateLocList()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;->templateLocList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;->templateLocList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 425
    :cond_0
    return-void
.end method

.method public getTemplateByIndex(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;->templateLocList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;->templateLocList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 418
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTemplateLocList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;->templateLocList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setTemplateLocList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p1, "templateLocList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$Location;>;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/puzzle/view/FreedomImageLocationFactory$FreedomTemplate;->templateLocList:Ljava/util/ArrayList;

    .line 414
    return-void
.end method
