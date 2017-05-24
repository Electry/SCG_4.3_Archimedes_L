.class public Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupObject;
.super Ljava/lang/Object;
.source "GroupObject.java"


# instance fields
.field public lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public total_number:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total_number"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
