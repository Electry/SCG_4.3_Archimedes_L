.class public Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostObject;
.super Ljava/lang/Object;
.source "RepostObject.java"


# instance fields
.field public hasvisible:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasvisible"
    .end annotation
.end field

.field public next_cursor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "next_cursor"
    .end annotation
.end field

.field public previous_cursor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "previous_cursor"
    .end annotation
.end field

.field public reposts:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reposts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/RepostInfo;",
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
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
