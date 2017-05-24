.class public Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;
.super Ljava/lang/Object;
.source "GeoInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x16b2138255196cffL


# instance fields
.field private address:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private city_name:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private more:Ljava/lang/String;

.field private pinyin:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private province_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;->city_name:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;->more:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;->pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;->province_name:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;->address:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;->city:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setCity_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "city_name"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;->city_name:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;->latitude:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;->longitude:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setMore(Ljava/lang/String;)V
    .locals 0
    .param p1, "more"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;->more:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setPinyin(Ljava/lang/String;)V
    .locals 0
    .param p1, "pinyin"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;->pinyin:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;->province:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setProvince_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "province_name"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/jsonjavabean/GeoInfo;->province_name:Ljava/lang/String;

    .line 78
    return-void
.end method
