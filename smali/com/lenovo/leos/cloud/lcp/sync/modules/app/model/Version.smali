.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version$VersionComparator;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_OK:I = 0x0

.field public static final MATCH_OSVERSION_NO_RIGHT:I = 0x1

.field public static final MATCH_SCREEN_FAIL:I = 0x2

.field public static final VERSION:Ljava/util/regex/Pattern;


# instance fields
.field private backup:Z

.field private match:I

.field private md5:Ljava/lang/String;

.field private size:J

.field private time:J

.field private url:Ljava/lang/String;

.field public versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "([0-9]+)(\\.[0-9]{1,3}){0,2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->VERSION:Ljava/util/regex/Pattern;

    .line 144
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version$1;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version$1;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 162
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;
    .locals 7
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 57
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;-><init>()V

    .line 58
    .local v0, "ver":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;
    const-string v1, "backup"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string v1, "backup"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->backup:Z

    .line 61
    :cond_0
    const-string v1, "checksum"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "checksum"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->md5:Ljava/lang/String;

    .line 62
    const-string/jumbo v1, "size"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "size"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_1
    iput-wide v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->size:J

    .line 63
    const-string/jumbo v1, "time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_1
    iput-wide v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->time:J

    .line 64
    const-string/jumbo v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->url:Ljava/lang/String;

    .line 65
    const-string/jumbo v1, "match"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "match"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_3
    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->match:I

    .line 66
    const-string/jumbo v1, "vc"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "vc"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    :cond_2
    iput v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->versionCode:I

    .line 67
    const-string/jumbo v1, "vn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "vn"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->versionName:Ljava/lang/String;

    .line 68
    return-object v0

    .line 61
    :cond_3
    const-string v1, ""

    goto :goto_0

    :cond_4
    move-wide v2, v4

    .line 62
    goto :goto_1

    .line 64
    :cond_5
    const-string v1, ""

    goto :goto_2

    :cond_6
    move v1, v6

    .line 65
    goto :goto_3

    .line 67
    :cond_7
    const-string v1, ""

    goto :goto_4
.end method

.method public static toVersionNumber(Ljava/lang/String;)J
    .locals 18
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "@"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 78
    :cond_0
    const-wide/16 v12, -0x1

    .line 97
    :goto_0
    return-wide v12

    .line 81
    :cond_1
    sget-object v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->VERSION:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 82
    .local v9, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 83
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, "group":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 86
    const-string v11, "\\."

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 87
    .local v10, "ss":[Ljava/lang/String;
    array-length v11, v10

    if-lez v11, :cond_5

    .line 88
    array-length v11, v10

    if-lez v11, :cond_2

    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_1
    int-to-long v2, v11

    .line 89
    .local v2, "a":J
    array-length v11, v10

    const/4 v12, 0x1

    if-le v11, v12, :cond_3

    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_2
    int-to-long v4, v11

    .line 90
    .local v4, "b":J
    array-length v11, v10

    const/4 v12, 0x2

    if-le v11, v12, :cond_4

    const/4 v11, 0x2

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_3
    int-to-long v6, v11

    .line 92
    .local v6, "c":J
    long-to-double v12, v2

    const-wide v14, 0x408f400000000000L    # 1000.0

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v4

    long-to-double v14, v14

    add-double/2addr v12, v14

    long-to-double v14, v6

    add-double/2addr v12, v14

    double-to-long v12, v12

    goto :goto_0

    .line 88
    .end local v2    # "a":J
    .end local v4    # "b":J
    .end local v6    # "c":J
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 89
    .restart local v2    # "a":J
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 90
    .restart local v4    # "b":J
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 97
    .end local v2    # "a":J
    .end local v4    # "b":J
    .end local v8    # "group":Ljava/lang/String;
    .end local v10    # "ss":[Ljava/lang/String;
    :cond_5
    const-wide/16 v12, -0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getMatch()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->match:I

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->size:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->time:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public isBackup()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->backup:Z

    return v0
.end method

.method public setBackup(Z)V
    .locals 0
    .param p1, "backup"    # Z

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->backup:Z

    .line 200
    return-void
.end method

.method public setMatch(I)V
    .locals 0
    .param p1, "match"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->match:I

    .line 38
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->md5:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 181
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->size:J

    .line 182
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->time:J

    .line 206
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->url:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .param p1, "versionCode"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->versionCode:I

    .line 170
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->versionName:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 47
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 50
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->md5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->match:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->backup:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
