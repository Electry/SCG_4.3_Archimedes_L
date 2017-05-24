.class public Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;
.super Ljava/lang/Object;
.source "ExecCommand.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/edit/Command;


# instance fields
.field private commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "inCommands":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/scg/gallery3d/facepretty/utils/SingleCommand;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;->commands:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;->mUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    .line 27
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;->commands:Ljava/util/List;

    .line 28
    new-instance v0, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/facepretty/utils/ExecCommand;->mUtils:Lcom/lenovo/scg/gallery3d/facepretty/utils/FaceBitmapUtils;

    .line 29
    return-void
.end method


# virtual methods
.method public execute(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p1, "sourceBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 37
    return-object p1
.end method
