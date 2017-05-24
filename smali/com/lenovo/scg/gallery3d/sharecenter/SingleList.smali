.class public Lcom/lenovo/scg/gallery3d/sharecenter/SingleList;
.super Ljava/lang/Object;
.source "SingleList.java"


# static fields
.field public static singleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/SingleList;->singleList:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getInstance()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/ShareParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/SingleList;->singleList:Ljava/util/ArrayList;

    return-object v0
.end method
