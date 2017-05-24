.class public Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesObject;
.super Ljava/lang/Object;
.source "StatusesObject.java"


# instance fields
.field public attitudes_count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "attitudes_count"
    .end annotation
.end field

.field public bmiddle_pic:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bmiddle_pic"
    .end annotation
.end field

.field public comments_count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "comments_count"
    .end annotation
.end field

.field public created_at:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field public favorited:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favorited"
    .end annotation
.end field

.field public geo:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "geo"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public idstr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "idstr"
    .end annotation
.end field

.field public in_reply_to_screen_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_screen_name"
    .end annotation
.end field

.field public in_reply_to_status_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_status_id"
    .end annotation
.end field

.field public in_reply_to_user_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "in_reply_to_user_id"
    .end annotation
.end field

.field public melvel:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "melvel"
    .end annotation
.end field

.field public mid:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mid"
    .end annotation
.end field

.field public original_pic:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "original_pic"
    .end annotation
.end field

.field public pic_urls:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pic_urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/PicInfo;",
            ">;"
        }
    .end annotation
.end field

.field public reposts_count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reposts_count"
    .end annotation
.end field

.field public retweeted_status:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/StatusesInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retweeted_status"
    .end annotation
.end field

.field public source:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field

.field public thumbnail_pic:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thumbnail_pic"
    .end annotation
.end field

.field public truncated:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "truncated"
    .end annotation
.end field

.field public user:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/UserInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field

.field public visible:Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/VisibleInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visible"
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
