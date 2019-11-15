<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script>
    $(document).ready(function () {
        $('#sidebarCollapse').on('click', function () {
            $('#sidebar').toggleClass('active');
            $(this).toggleClass('active');

        });
    });
    $('.list-group').on('click', 'a', function () {
        $('.list-group a.active').removeClass('active');
        $(this).addClass('active');
    });

    mapboxgl.accessToken = 'pk.eyJ1IjoibWFyZzMwIiwiYSI6ImNrMTQxZ2g5czBmazEzb3RjYXZ5NDhscHcifQ.9EVuUOu0vm7jcwaCBAuG8A';

    var map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v11',
        center: [-58.4287612, -34.6010516],
        language: 'es',
        zoom: 12
    });
    var geocoder = new MapboxGeocoder({
        accessToken: mapboxgl.accessToken,
        mapboxgl: mapboxgl
    });

    document.getElementById('geocoder').appendChild(geocoder.onAdd(map));
    var geojson = {
        type: 'FeatureCollection',
        features: [{
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.4351, -34.606]
                },
                properties: {
                    title: 'Parque Centenario',
                    description: 'Se recicla: '
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.38109589923738, -34.62629436066753]
                },
                properties: {
                    title: 'Plaza Constitución',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.383329140474416, -34.59752832181051]
                },
                properties: {
                    title: 'Plaza Libertad',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.37624421881145, -34.622604748298066]
                },
                properties: {
                    title: 'Plaza Rosario Vega Peñaloza',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.4071254826797, -34.59733350417024]
                },
                properties: {
                    title: 'Plaza Monseñor De Andrea',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.3980952199899, -34.61111991262458]
                },
                properties: {
                    title: 'Plaza Primero de mayo',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.391279117371994, -34.59890050709088]
                },
                properties: {
                    title: 'Plaza Petrolina Rodriguez',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.403486525365224, -34.61735228157416]
                },
                properties: {
                    title: 'Plaza Dr. J.M. Velazco Ibarra',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.40457877569361, -34.624252345992055]
                },
                properties: {
                    title: 'Plaza Vea',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.40786343616588, -34.626070346262054]
                },
                properties: {
                    title: 'Plaza Martín Fierro',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.40563839118204, -34.61415852619558]
                },
                properties: {
                    title: 'Plaza Manzana 66',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.415639912152756, -34.65189741486707]
                },
                properties: {
                    title: 'Plaza Nueva Pompeya',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.40677753720132, -34.63873147835435]
                },
                properties: {
                    title: 'Parque de los Patricios',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.392990623360674, -34.62816587268024]
                },
                properties: {
                    title: 'Polo Circo',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.38831535381223, -34.64931448694736]
                },
                properties: {
                    title: 'Parque Leonardo Pereyra',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.36683837711905, -34.64031228486004]
                },
                properties: {
                    title: 'Plaza Matheu',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.37648876799199, -34.64425420563424]
                },
                properties: {
                    title: 'Plaza Herrera',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.35521770533518, -34.63453031792273]
                },
                properties: {
                    title: 'Plaza Solis',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.39446137128829, -34.63665736426145]
                },
                properties: {
                    title: 'Plaza Florentino Ameghino',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.41281240975661, -34.622585038534645]
                },
                properties: {
                    title: 'Plaza Mariano Boedo',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.41912069402082, -34.6058292754048]
                },
                properties: {
                    title: 'Plaza Almagro',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.45782404698252, -34.61472872922392]
                },
                properties: {
                    title: 'Plaza Irlanda',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.43331501513046, -34.61821730845573]
                },
                properties: {
                    title: 'Parque Rivadavia',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.44104947694382, -34.6173910383145]
                },
                properties: {
                    title: 'Plaza Giordano Bruno',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.443490211298126, -34.61261777080397]
                },
                properties: {
                    title: 'Plaza Amadeo Sabattini',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.4636235663873, -34.628509372206494]
                },
                properties: {
                    title: 'Plaza Pueyrredón',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.456577642206014, -34.62216783160835]
                },
                properties: {
                    title: 'Plaza Angel Gris',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.47297082596219, -34.62164787195096]
                },
                properties: {
                    title: 'Plaza de los Periodistas',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.44336461878294, -34.63468997720058]
                },
                properties: {
                    title: 'Parque Chacabuco',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.455738133767454, -34.6326443470973]
                },
                properties: {
                    title: 'Plaza de la Misericordia',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.46353207379559, -34.634909590072475]
                },
                properties: {
                    title: 'Plaza 11 de noviembre',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.47498507844364, -34.688526504922706]
                },
                properties: {
                    title: 'Plaza Sudamerica',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.476984059710276, -34.677384541960706]
                },
                properties: {
                    title: 'Estacion Villa Lugano',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.469543965095795, -34.664482272990384]
                },
                properties: {
                    title: 'Plaza Calabria',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.483795979881336, -34.64756892462746]
                },
                properties: {
                    title: 'Plaza Doming Olivera',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.479748365744854, -34.64407007394004]
                },
                properties: {
                    title: 'Parque Avellaneda',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.52052948662424, -34.65734057386265]
                },
                properties: {
                    title: 'Plaza Romulo Zabala',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.51446284298004, -34.66400759555813]
                },
                properties: {
                    title: 'Carrefour Mataderos',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.52337374859542, -34.64538362876073]
                },
                properties: {
                    title: 'Plaza Sarmiento',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.527247713287124, -34.651113142420236]
                },
                properties: {
                    title: 'Plaza Sargento Cabral',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.5140634410638, -34.64794553060102]
                },
                properties: {
                    title: 'Parque Santojanni',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.50835836464029, -34.62603591199292]
                },
                properties: {
                    title: 'Plaza Don Bosco',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.5209297053774, -34.62869340036369]
                },
                properties: {
                    title: 'Plaza Ciudad de Banff',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.52527027885509, -34.61683278420278]
                },
                properties: {
                    title: 'Plaza Toscaneras de Villa Real',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.49752291728635, -34.61817419792369]
                },
                properties: {
                    title: 'Plaza Monte Castro',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.50823609953113, -34.618800065870815]
                },
                properties: {
                    title: 'Plaza Monseñor Lafitte',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.48218194360294, -34.635855571063146]
                },
                properties: {
                    title: 'Plaza Cnel. Ramón Lorenzo Falcón',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.49228893616299, -34.62065074111291]
                },
                properties: {
                    title: 'Plaza Ciudad de Udine',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.49321349122363, -34.628784753381325]
                },
                properties: {
                    title: 'Plaza de la Bandera',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.52238743061133, -34.63349404490905]
                },
                properties: {
                    title: 'Carrefour Juan B. Justo',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.49293093522937, -34.60568882494381]
                },
                properties: {
                    title: 'Plaza Aristóbulo del Valle',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.5225360924598, -34.612835506865046]
                },
                properties: {
                    title: 'Plaza El Maestro',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.46765666054284, -34.6106639963287]
                },
                properties: {
                    title: 'Plaza Doctor Roque Saenz Peña',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.51218859657922, -34.59946290366031]
                },
                properties: {
                    title: 'Plaza Arenales',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.47997963403907, -34.55085452361665]
                },
                properties: {
                    title: 'Parque Saavedra',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.50324938776532, -34.576394461129325]
                },
                properties: {
                    title: 'Plaza Leandro N. Alem',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.48927221934798, -34.572097175761364]
                },
                properties: {
                    title: 'Plaza Echeverría',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.48717680486533, -34.560019801574036]
                },
                properties: {
                    title: 'Plaza Juan Bautista Alberdi',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.501071520859, -34.59085218376869]
                },
                properties: {
                    title: 'Plaza Martín Rodriguez',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.475139490874994, -34.57373380216254]
                },
                properties: {
                    title: 'Plaza Zapiola',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.48160551355164, -34.57125820149799]
                },
                properties: {
                    title: 'Plaza Marcos Sastre',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.49789992615405, -34.55361090751782]
                },
                properties: {
                    title: 'Balbin',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.47739618107107, -34.54417352719488]
                },
                properties: {
                    title: 'Plaza Benjamín Vicuña Mackenna',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.46850530484687, -34.54755424640626]
                },
                properties: {
                    title: 'Plaza Balcarce',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.438760580965834, -34.54544749778653]
                },
                properties: {
                    title: 'Ciudad Universitaria (Intendente Guiraldes 2160)',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.46445685136996, -34.56756418553708]
                },
                properties: {
                    title: 'Plaza Castelli',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.45475490860201, -34.56177783440426]
                },
                properties: {
                    title: 'Plaza Manuel Belgrano',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.44556120307806, -34.580766239492284]
                },
                properties: {
                    title: 'Plaza Mafalda',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.46271090834034, -34.54858363668006]
                },
                properties: {
                    title: 'Estacion Nuñez',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.458511614553004, -34.57775867705233]
                },
                properties: {
                    title: 'Plaza San Miguel de Garicoitis',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.44025764550486, -34.549600566548435]
                },
                properties: {
                    title: 'Parque Paseo de las Americas',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.41645470322362, -34.58953310503253]
                },
                properties: {
                    title: 'Plaza Güemes',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.42519692910588, -34.588854605469535]
                },
                properties: {
                    title: 'Plaza Inmigrantes de Armenia',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.40869166375575, -34.58420685239868]
                },
                properties: {
                    title: 'Parque Las Heras',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.40390093573393, -34.57665452640666]
                },
                properties: {
                    title: 'Plaza República del Perú',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.45286985201062, -34.58877867246133]
                },
                properties: {
                    title: 'Parque Los Andes',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.46250891030468, -34.580321012959615]
                },
                properties: {
                    title: 'Plaza 25 de agosto',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.445423773104494, -34.604976471234366]
                },
                properties: {
                    title: 'Plaza General Benito Nazar',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.46718276772697, -34.587895219952884]
                },
                properties: {
                    title: 'Plaza Antonio Malaver',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.4483050725114, -34.606728324468875]
                },
                properties: {
                    title: 'Plaza 24 de septiembre',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.48442621639117, -34.58786435307251]
                },
                properties: {
                    title: 'Plaza Nobel',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.45475107433941, -34.584593784626804]
                },
                properties: {
                    title: 'Plazoleta Teodoro Garcia',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.38937772906036, -34.59387709030001]
                },
                properties: {
                    title: 'Plaza Vicente Lopez',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.393184299713255, -34.58493695434064]
                },
                properties: {
                    title: 'Plaza Francia',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.458511614553004, -34.57775867705233]
                },
                properties: {
                    title: 'Plaza Colombia',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.374152510741396, -34.63759095897547]
                },
                properties: {
                    title: 'Plaza Colombia',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.40681513034019, -34.63860061229339]
                },
                properties: {
                    title: 'Parque Patricios - Feria Itinerante de Abastecimiento Barrial',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.41030160002191, -34.58159320961739]
                },
                properties: {
                    title: 'Plaza Sobral - Feria Itinerante de Abastecimiento Barrial',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.36975080590065, -34.626706827613766]
                },
                properties: {
                    title: 'Plaza Lezama',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.48268269625436, -34.629952436900695]
                },
                properties: {
                    title: 'Plaza Vélez Sarsfield',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.519488900726, -34.62066400393553]
                },
                properties: {
                    title: 'Plaza Doctor Juan B. Terán',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.509300717796805, -34.63961406321005]
                },
                properties: {
                    title: 'Plaza Ejército de los Andes',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.4703176472953, -34.54149132202997]
                },
                properties: {
                    title: 'Plaza Félix Lima',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.43883979943956, -34.56569012825668]
                },
                properties: {
                    title: 'Cantero Ciudad de Pigüé',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.41067488858761, -34.58831871923947]
                },
                properties: {
                    title: 'Alto Palermo',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.46328669036609, -34.664541656798946]
                },
                properties: {
                    title: 'Parque Indoamericano',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.374202694702376, -34.59724236033451]
                },
                properties: {
                    title: 'San Martín 913',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.424208183205906, -34.57047227970623]
                },
                properties: {
                    title: 'Bioferia - Hipódromo de Palermo',
                    description: 'Av. del Libertador y Av. Dorrego. Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.51365606421001, -34.64677883828487]
                },
                properties: {
                    title: 'Patrón 6222- Parque Santojanni',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            },
            {
                type: 'Feature',
                geometry: {
                    type: 'Point',
                    coordinates: [-58.39705998492258, -34.58866992550025]
                },
                properties: {
                    title: 'Plaza Emilio Mitre',
                    description: 'Se recicla papel, cartón, plástico, vidrio, metal, aceite vegetal usado.'
                }
            }]
    };
// add markers to map
    function crearMarket(color) {
        geojson.features.forEach(function (marker) {

            // create a HTML element for each feature
            var el = document.createElement('div');
            el.className = 'marker';

            // make a marker for each feature and add to the map
            new mapboxgl.Marker(el)
                    .setLngLat(marker.geometry.coordinates)
                    .setPopup(new mapboxgl.Popup({offset: 25}) // add popups
                            .setHTML('<h3 class="pop-up">' + marker.properties.title + '</h3><p>' + marker.properties.description + '</p>'))
                    .addTo(map);
        });
        var markers = document.getElementsByClassName("marker");
        for (var i = 0; i < markers.length; i++) {
            var image = "url(https://github.com/marg30/EcoGO/blob/master/files/pin-" + color + ".png?raw=true)";
            markers[i].style.backgroundImage = image;
        }
    }
</script>