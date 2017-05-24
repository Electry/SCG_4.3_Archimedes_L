.class public Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;
.super Ljava/lang/Object;
.source "ReverseGeocoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;
    }
.end annotation


# static fields
.field public static final EARTH_RADIUS_METERS:I = 0x615299

.field private static final GEO_CACHE_FILE:Ljava/lang/String; = "rev_geocoding"

.field private static final GEO_CACHE_MAX_BYTES:I = 0x7d000

.field private static final GEO_CACHE_MAX_ENTRIES:I = 0x3e8

.field private static final GEO_CACHE_VERSION:I = 0x0

.field public static final LAT_MAX:I = 0x5a

.field public static final LAT_MIN:I = -0x5a

.field public static final LON_MAX:I = 0xb4

.field public static final LON_MIN:I = -0xb4

.field private static final MAX_COUNTRY_NAME_LENGTH:I = 0x8

.field private static final MAX_LOCALITY_MILE_RANGE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ReverseGeocoder"

.field private static sCurrentAddress:Landroid/location/Address;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mGeoCache:Lcom/lenovo/scg/gallery3d/common/BlobCache;

.field private mGeocoder:Landroid/location/Geocoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    .line 103
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    .line 104
    const-string/jumbo v0, "rev_geocoding"

    const/16 v1, 0x3e8

    const v2, 0x7d000

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/lenovo/scg/gallery3d/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/lenovo/scg/gallery3d/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/lenovo/scg/gallery3d/common/BlobCache;

    .line 105
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 106
    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "locality"    # Ljava/lang/String;

    .prologue
    .line 287
    if-nez p1, :cond_1

    const-string p1, ""

    .line 289
    .end local p1    # "locality":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 288
    .restart local p1    # "locality":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0
.end method

.method private getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;
    .locals 4
    .param p1, "addr"    # Landroid/location/Address;
    .param p2, "approxLocation"    # Z

    .prologue
    .line 293
    if-nez p1, :cond_1

    const-string v1, ""

    .line 309
    :cond_0
    :goto_0
    return-object v1

    .line 294
    :cond_1
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "localityAdminStr":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string/jumbo v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 296
    if-eqz p2, :cond_2

    .line 303
    :cond_2
    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "adminArea":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 309
    .end local v0    # "adminArea":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "retVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 419
    .end local v0    # "retVal":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    .line 405
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "a":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "a":Ljava/lang/String;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static final writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .param p0, "dos"    # Ljava/io/DataOutputStream;
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public computeAddress(Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;)Ljava/lang/String;
    .locals 48
    .param p1, "set"    # Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;

    .prologue
    .line 110
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    .line 111
    .local v6, "setMinLatitude":D
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    .line 112
    .local v8, "setMinLongitude":D
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    .line 113
    .local v12, "setMaxLatitude":D
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    .line 114
    .local v14, "setMaxLongitude":D
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    move-wide/from16 v16, v0

    sub-double v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpg-double v5, v10, v16

    if-gez v5, :cond_0

    .line 115
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    .line 116
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    .line 117
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    .line 118
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    .line 120
    :cond_0
    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v4

    .line 121
    .local v4, "addr1":Landroid/location/Address;
    const/16 v16, 0x1

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v29

    .line 122
    .local v29, "addr2":Landroid/location/Address;
    if-nez v4, :cond_1

    move-object/from16 v4, v29

    .line 123
    :cond_1
    if-nez v29, :cond_2

    move-object/from16 v29, v4

    .line 124
    :cond_2
    if-eqz v4, :cond_3

    if-nez v29, :cond_5

    .line 125
    :cond_3
    const/16 v35, 0x0

    .line 283
    :cond_4
    :goto_0
    return-object v35

    .line 130
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->mContext:Landroid/content/Context;

    const-string v10, "location"

    invoke-virtual {v5, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/location/LocationManager;

    .line 131
    .local v44, "locationManager":Landroid/location/LocationManager;
    const/16 v43, 0x0

    .line 132
    .local v43, "location":Landroid/location/Location;
    invoke-virtual/range {v44 .. v44}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v47

    .line 133
    .local v47, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v42, 0x0

    .local v42, "i":I
    :goto_1
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v42

    if-ge v0, v5, :cond_6

    .line 134
    move-object/from16 v0, v47

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 135
    .local v46, "provider":Ljava/lang/String;
    if-eqz v46, :cond_a

    move-object/from16 v0, v44

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v43

    .line 136
    :goto_2
    if-eqz v43, :cond_b

    .line 138
    .end local v46    # "provider":Ljava/lang/String;
    :cond_6
    const-string v39, ""

    .line 139
    .local v39, "currentCity":Ljava/lang/String;
    const-string v38, ""

    .line 140
    .local v38, "currentAdminArea":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v40

    .line 141
    .local v40, "currentCountry":Ljava/lang/String;
    if-eqz v43, :cond_7

    .line 142
    invoke-virtual/range {v43 .. v43}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    invoke-virtual/range {v43 .. v43}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    const/16 v22, 0x1

    move-object/from16 v17, p0

    invoke-virtual/range {v17 .. v22}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v37

    .line 143
    .local v37, "currentAddress":Landroid/location/Address;
    if-nez v37, :cond_c

    .line 144
    sget-object v37, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->sCurrentAddress:Landroid/location/Address;

    .line 148
    :goto_3
    if-eqz v37, :cond_7

    invoke-virtual/range {v37 .. v37}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 149
    invoke-virtual/range {v37 .. v37}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 150
    invoke-virtual/range {v37 .. v37}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 151
    invoke-virtual/range {v37 .. v37}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 155
    .end local v37    # "currentAddress":Landroid/location/Address;
    :cond_7
    const/16 v35, 0x0

    .line 156
    .local v35, "closestCommonLocation":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 157
    .local v28, "addr1Locality":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 158
    .local v33, "addr2Locality":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 159
    .local v25, "addr1AdminArea":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 160
    .local v30, "addr2AdminArea":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 161
    .local v27, "addr1CountryCode":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 163
    .local v32, "addr2CountryCode":Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 164
    :cond_8
    move-object/from16 v45, v39

    .line 165
    .local v45, "otherCity":Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 166
    move-object/from16 v45, v33

    .line 167
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_9

    .line 168
    move-object/from16 v45, v30

    .line 169
    move-object/from16 v0, v40

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 173
    :cond_9
    move-object/from16 v33, v28

    .line 174
    move-object/from16 v30, v25

    .line 175
    move-object/from16 v32, v27

    .line 188
    :goto_4
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 189
    if-eqz v35, :cond_f

    const-string/jumbo v5, "null"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 190
    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " - "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0

    .line 135
    .end local v25    # "addr1AdminArea":Ljava/lang/String;
    .end local v27    # "addr1CountryCode":Ljava/lang/String;
    .end local v28    # "addr1Locality":Ljava/lang/String;
    .end local v30    # "addr2AdminArea":Ljava/lang/String;
    .end local v32    # "addr2CountryCode":Ljava/lang/String;
    .end local v33    # "addr2Locality":Ljava/lang/String;
    .end local v35    # "closestCommonLocation":Ljava/lang/String;
    .end local v38    # "currentAdminArea":Ljava/lang/String;
    .end local v39    # "currentCity":Ljava/lang/String;
    .end local v40    # "currentCountry":Ljava/lang/String;
    .end local v45    # "otherCity":Ljava/lang/String;
    .restart local v46    # "provider":Ljava/lang/String;
    :cond_a
    const/16 v43, 0x0

    goto/16 :goto_2

    .line 133
    :cond_b
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_1

    .line 146
    .end local v46    # "provider":Ljava/lang/String;
    .restart local v37    # "currentAddress":Landroid/location/Address;
    .restart local v38    # "currentAdminArea":Ljava/lang/String;
    .restart local v39    # "currentCity":Ljava/lang/String;
    .restart local v40    # "currentCountry":Ljava/lang/String;
    :cond_c
    sput-object v37, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->sCurrentAddress:Landroid/location/Address;

    goto/16 :goto_3

    .line 177
    .end local v37    # "currentAddress":Landroid/location/Address;
    .restart local v25    # "addr1AdminArea":Ljava/lang/String;
    .restart local v27    # "addr1CountryCode":Ljava/lang/String;
    .restart local v28    # "addr1Locality":Ljava/lang/String;
    .restart local v30    # "addr2AdminArea":Ljava/lang/String;
    .restart local v32    # "addr2CountryCode":Ljava/lang/String;
    .restart local v33    # "addr2Locality":Ljava/lang/String;
    .restart local v35    # "closestCommonLocation":Ljava/lang/String;
    .restart local v45    # "otherCity":Ljava/lang/String;
    :cond_d
    move-object/from16 v45, v28

    .line 178
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_e

    .line 179
    move-object/from16 v45, v25

    .line 180
    move-object/from16 v0, v40

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 184
    :cond_e
    move-object/from16 v28, v33

    .line 185
    move-object/from16 v25, v30

    .line 186
    move-object/from16 v27, v32

    goto/16 :goto_4

    .line 197
    :cond_f
    invoke-virtual {v4}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 198
    if-eqz v35, :cond_10

    const-string/jumbo v5, "null"

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 204
    .end local v45    # "otherCity":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 205
    if-eqz v35, :cond_12

    const-string v5, ""

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 206
    move-object/from16 v34, v25

    .line 207
    .local v34, "adminArea":Ljava/lang/String;
    move-object/from16 v36, v27

    .line 208
    .local v36, "countryCode":Ljava/lang/String;
    if-eqz v34, :cond_4

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 209
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0

    .line 212
    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0

    .line 220
    .end local v34    # "adminArea":Ljava/lang/String;
    .end local v36    # "countryCode":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 221
    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 222
    move-object/from16 v28, v33

    .line 224
    :cond_13
    const-string v5, ""

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 225
    move-object/from16 v33, v28

    .line 227
    :cond_14
    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 228
    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0

    .line 231
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " - "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0

    .line 239
    :cond_16
    const/4 v5, 0x1

    new-array v0, v5, [F

    move-object/from16 v24, v0

    .local v24, "distanceFloat":[F
    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-wide/from16 v20, v12

    move-wide/from16 v22, v14

    .line 240
    invoke-static/range {v16 .. v24}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 241
    const/4 v5, 0x0

    aget v5, v24, v5

    float-to-double v10, v5

    invoke-static {v10, v11}, Lcom/lenovo/scg/gallery3d/util/GalleryUtils;->toMile(D)D

    move-result-wide v10

    double-to-int v0, v10

    move/from16 v41, v0

    .line 242
    .local v41, "distance":I
    const/16 v5, 0x14

    move/from16 v0, v41

    if-ge v0, v5, :cond_17

    .line 245
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v35

    .line 246
    if-nez v35, :cond_4

    .line 249
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->getLocalityAdminForAddress(Landroid/location/Address;Z)Ljava/lang/String;

    move-result-object v35

    .line 250
    if-nez v35, :cond_4

    .line 256
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 257
    if-eqz v35, :cond_18

    const-string v5, ""

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 258
    move-object/from16 v36, v27

    .line 259
    .restart local v36    # "countryCode":Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 260
    if-eqz v36, :cond_4

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0

    .line 268
    .end local v36    # "countryCode":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->valueIfEqual(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 269
    if-eqz v35, :cond_19

    const-string v5, ""

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 273
    :cond_19
    invoke-virtual {v4}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v26

    .line 274
    .local v26, "addr1Country":Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v31

    .line 275
    .local v31, "addr2Country":Ljava/lang/String;
    if-nez v26, :cond_1a

    move-object/from16 v26, v27

    .line 276
    :cond_1a
    if-nez v31, :cond_1b

    move-object/from16 v31, v32

    .line 277
    :cond_1b
    if-eqz v26, :cond_1c

    if-nez v31, :cond_1d

    :cond_1c
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 278
    :cond_1d
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v10, 0x8

    if-gt v5, v10, :cond_1e

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v10, 0x8

    if-le v5, v10, :cond_1f

    .line 279
    :cond_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " - "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0

    .line 281
    :cond_1f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " - "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_0
.end method

.method public lookupAddress(DDZ)Landroid/location/Address;
    .locals 25
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "useCache"    # Z

    .prologue
    .line 314
    const-wide v6, 0x4056800000000000L    # 90.0

    add-double v6, v6, p1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide v8, 0x4056800000000000L    # 90.0

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    add-double v8, v8, p3

    add-double/2addr v6, v8

    const-wide v8, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v6, v8

    double-to-long v0, v6

    move-wide/from16 v20, v0

    .line 315
    .local v20, "locationKey":J
    const/4 v13, 0x0

    .line 316
    .local v13, "cachedLocation":[B
    if-eqz p5, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/lenovo/scg/gallery3d/common/BlobCache;

    if-eqz v5, :cond_0

    .line 317
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/lenovo/scg/gallery3d/common/BlobCache;

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Lcom/lenovo/scg/gallery3d/common/BlobCache;->lookup(J)[B

    move-result-object v13

    .line 319
    :cond_0
    const/4 v4, 0x0

    .line 320
    .local v4, "address":Landroid/location/Address;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v22

    .line 321
    .local v22, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v13, :cond_1

    array-length v5, v13

    if-nez v5, :cond_7

    .line 322
    :cond_1
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_4

    .line 323
    :cond_2
    const/4 v4, 0x0

    .line 401
    .end local v4    # "address":Landroid/location/Address;
    .end local v22    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_3
    :goto_0
    return-object v4

    .line 325
    .restart local v4    # "address":Landroid/location/Address;
    .restart local v22    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->mGeocoder:Landroid/location/Geocoder;

    const/4 v10, 0x1

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-virtual/range {v5 .. v10}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v11

    .line 326
    .local v11, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 327
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "address":Landroid/location/Address;
    check-cast v4, Landroid/location/Address;

    .line 328
    .restart local v4    # "address":Landroid/location/Address;
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 329
    .local v12, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 330
    .local v16, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v4}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v19

    .line 331
    .local v19, "locale":Ljava/util/Locale;
    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v4}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v4}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v23

    .line 337
    .local v23, "numAddressLines":I
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 338
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 339
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 338
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 341
    :cond_5
    invoke-virtual {v4}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v4}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v4}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v4}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 346
    invoke-virtual {v4}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v4}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 348
    invoke-virtual {v4}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v4}, Landroid/location/Address;->getPhone()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v4}, Landroid/location/Address;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->writeUTF(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->flush()V

    .line 353
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/lenovo/scg/gallery3d/common/BlobCache;

    if-eqz v5, :cond_6

    .line 354
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->mGeoCache:Lcom/lenovo/scg/gallery3d/common/BlobCache;

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1, v6}, Lcom/lenovo/scg/gallery3d/common/BlobCache;->insert(J[B)V

    .line 356
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->close()V

    goto/16 :goto_0

    .line 398
    .end local v4    # "address":Landroid/location/Address;
    .end local v11    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v12    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "dos":Ljava/io/DataOutputStream;
    .end local v17    # "i":I
    .end local v19    # "locale":Ljava/util/Locale;
    .end local v22    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v23    # "numAddressLines":I
    :catch_0
    move-exception v5

    .line 401
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 360
    .restart local v4    # "address":Landroid/location/Address;
    .restart local v22    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_7
    new-instance v15, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v15, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 361
    .local v15, "dis":Ljava/io/DataInputStream;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v18

    .line 362
    .local v18, "language":Ljava/lang/String;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v14

    .line 363
    .local v14, "country":Ljava/lang/String;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v24

    .line 364
    .local v24, "variant":Ljava/lang/String;
    const/16 v19, 0x0

    .line 365
    .restart local v19    # "locale":Ljava/util/Locale;
    if-eqz v18, :cond_8

    .line 366
    if-nez v14, :cond_9

    .line 367
    new-instance v19, Ljava/util/Locale;

    .end local v19    # "locale":Ljava/util/Locale;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 374
    .restart local v19    # "locale":Ljava/util/Locale;
    :cond_8
    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 375
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 376
    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-virtual/range {v5 .. v10}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v4

    goto/16 :goto_0

    .line 368
    :cond_9
    if-nez v24, :cond_a

    .line 369
    new-instance v19, Ljava/util/Locale;

    .end local v19    # "locale":Ljava/util/Locale;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v19    # "locale":Ljava/util/Locale;
    goto :goto_2

    .line 371
    :cond_a
    new-instance v19, Ljava/util/Locale;

    .end local v19    # "locale":Ljava/util/Locale;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v14, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v19    # "locale":Ljava/util/Locale;
    goto :goto_2

    .line 378
    :cond_b
    new-instance v4, Landroid/location/Address;

    .end local v4    # "address":Landroid/location/Address;
    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 380
    .restart local v4    # "address":Landroid/location/Address;
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v23

    .line 382
    .restart local v23    # "numAddressLines":I
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    .line 383
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v4, v0, v5}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 382
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 385
    :cond_c
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 386
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 387
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 388
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    .line 390
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    .line 391
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 392
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    .line 393
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/location/Address;->setPhone(Ljava/lang/String;)V

    .line 394
    invoke-static {v15}, Lcom/lenovo/scg/gallery3d/util/ReverseGeocoder;->readUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/location/Address;->setUrl(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
