-- Test file for GrowingSociety.lua
-- Author: Pedro R. Andrade

return{
	GrowingSociety = function(unitTest)
		local model = GrowingSociety{
			finalTime = 5
		}

		unitTest:assertSnapshot(model.map, "GrowingSociety-map-2-begin.bmp", 0.1)

		model:run()

		unitTest:assertSnapshot(model.chart, "GrowingSociety-chart-1.bmp", 0.1)
		unitTest:assertSnapshot(model.map, "GrowingSociety-map-2-end.bmp", 0.1)
	end,
}

