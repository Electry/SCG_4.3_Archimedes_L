.class public Lcom/lenovo/scg/gallery3d/sharecenter/SingleTencentList;
.super Ljava/util/ArrayList;
.source "SingleTencentList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/lenovo/scg/gallery3d/sharecenter/ShareTencentParameter;",
        ">;"
    }
.end annotation


# static fields
.field public static singleList:Lcom/lenovo/scg/gallery3d/sharecenter/SingleTencentList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/SingleTencentList;

    invoke-direct {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SingleTencentList;-><init>()V

    sput-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/SingleTencentList;->singleList:Lcom/lenovo/scg/gallery3d/sharecenter/SingleTencentList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    return-void
.end method

.method public static getInstance()Lcom/lenovo/scg/gallery3d/sharecenter/SingleTencentList;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/lenovo/scg/gallery3d/sharecenter/SingleTencentList;->singleList:Lcom/lenovo/scg/gallery3d/sharecenter/SingleTencentList;

    return-object v0
.end method
